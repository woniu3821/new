const Koa = require("koa");
const Router = require("koa-router");
const bodyParser = require("koa-bodyparser");
const static = require("koa-static");
const path = require("path");
const upload = require("./middlewares/uploadStorage");
const session = require("koa-session");
const sessionCofig = require("./middlewares/session.config");
const app = new Koa();
app.use(async (ctx, next) => {
  await next();
  if (ctx.path === "/favicon.ico") return;
});
app.keys = ["daklfjkldafklfdsajkfliiwr6738426478"];
app.use(session(sessionCofig, app));
const router = new Router();
app.use(bodyParser());
app.use(static(path.join(__dirname, "static")));
router
  .post("/login", require("./route/admin/login"))
  .post("/captcha", require("./route/admin/captcha"))
  .post("/upload", upload.single("file"), require("./route/admin/upload"))
  .post("/logupload", upload.single("img"), require("./route/admin/logupload"))
  .post("/checkname", require("./route/admin/checkname"))
  .post("/register", require("./route/admin/register"))
  .post("/setgroup", require("./route/admin/setgroup"))
  .post("/getwating", require("./route/admin/getwating"))
  .post("/getworking", require("./route/admin/getworking"))
  .post("/getprogress", require("./route/admin/getprogress"))
  .post("/getmycensus", require("./route/admin/getmycensus"))
  .post("/getusermap", require("./route/admin/getusermap"))
  .post("/actionlog", require("./route/admin/actionlog"))
  .post("/findpass", require("./route/admin/findpass"))
  .post("/resetpass", require("./route/user/resetpass"))
  .post("/user/navlist", require("./route/user/navlist"))
  .post("/user/getframelist", require("./route/user/getframelist"))
  .post("/user/outfit", require("./route/user/outfit"))
  .post("/user/build", require("./route/user/build"))
  .post("/user/created", require("./route/user/created"))
  .post("/user/upmission", require("./route/user/upmission"))
  .post("/user/setauthority", require("./route/user/setauthority"))
  .post("/user/getuserinfo", require("./route/user/getuserinfo"))
  .post("/user/setmyinfo", require("./route/user/setmyinfo"))
  .post("/user/subdaily", require("./route/user/subdaily"))
  .post("/user/getmydaily", require("./route/user/getmydaily"));
router
  .get("/getgroup", require("./route/admin/getgroup"))
  .get("/getgrouptree", require("./route/admin/getgrouptree"))
  .get("/resetpass", require("./route/admin/resetpass"));
app.use(router.routes()).use(router.allowedMethods());
app.listen(3000, () => {
  console.log("app listening 3000...");
});
