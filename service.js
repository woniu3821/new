const Koa = require("koa");
const Router = require("koa-router");
const bodyParser = require("koa-bodyparser");
const static = require("koa-static");
const path = require("path");
const jwtKoa = require("koa-jwt"); //验证token
const session = require("koa-session");
const cookie = require("cookie");
const http = require("http");
const socketio = require("socket.io");
const socketHander = require("./middlewares/socket.io");
const config = require("./config");
const router = require("./route");
const app = new Koa();

app.use(jwtKoa({ secret: config.secret }).unless(config.whiteList));
app.keys = config.keys;
app.use(session(config.session_config, app));
app.use(bodyParser());
app.use(static(path.join(__dirname, "static")));
app.use(router.routes()).use(router.allowedMethods());

const server = http.createServer(app.callback());
const io = new socketio(server);
io.use(async (socket, next) => {
  if (socket.request.headers.cookie) {
    socket.request.cookies = cookie.parse(socket.request.headers.cookie);
    await next();
  } else {
    return next(new Error("Missing cookie headers"));
  }
});
io.on("connection", function(socket) {
  socketHander(socket, io);
});

app.listen(3000, () => {
  console.log("app listening 3000...");
});
server.listen(2700, () => {
  console.log(`socket listening 2700..`);
});
