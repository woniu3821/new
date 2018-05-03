const asyncSocket = require("./socket");
const sedEmail = require("./sendEmail");
const config = require("../config");
module.exports = async (socket, io) => {
  let userId = socket.request.cookies.uid;
  let socketId = socket.id;
  //   重载或登录保存用户socketid
  if (userId) {
    asyncSocket.saveUserSocketId(userId, socketId);
    asyncSocket.getBaseData(userId).then(res => {
      io.sockets.sockets[socketId].emit("login", res);
    });
  }
  //任务通知

  socket.on("build_mission", async data => {
    let olds = data.old;
    let news = data.new;
    let change = data.change;
    if (!change) {
      await findSend(olds, config.newhtml, "mission_message", io);
    } else {
      if (news.length) {
        await findSend(news, config.newhtml, "mission_message", io);
      }
      if (olds.length) {
        await findSend(olds, config.oldhtml, "change_message", io);
      }
    }
  });
  socket.on("change_mission", async data => {
    let old = data;
  });
  //断开连接重置状态
  socket.on("disconnect", _ => {
    asyncSocket.saveUserSocketId(userId, null);
  });
};

async function findSend(peoples, html, action, io) {
  let online = await asyncSocket.findUserOnline(peoples);
  if (online.length) {
    for (let { email, socketid } of online) {
      if (email) await sedEmail("1470758149@qq.com", "任务通知 √", html);
      if (socketid) io.sockets.sockets[socketid].emit(action);
    }
  }
}
