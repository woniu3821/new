const dbUtils = require("../../middlewares/db-util");
let html = require("../../middlewares/resetpass_html");
module.exports = async (ctx, next) => {
  try {
    let query = ctx.request.query;
    let cheked = await dbUtils.query(
      `SELECT uid,token_time FROM user_table WHERE token="${
        query.token
      }" AND email="${query.email}" `
    );
    if (cheked.length) {
      let oldtime = cheked[0].token_time;
      let now = Date.now();
      let dis = (now - oldtime) / 1000;
      if (dis > 3000) {
        ctx.body = `
        <p style="text-align:center;font-size:18px;margin:10%;">>>> 链接已经失效..... <<<</p>
        <p style="text-align:center;font-size:16px;"><a style="color:#333;" href="http://www.blogscn.com" target="_self">点击此处>>></a>返回首页</p>
        `;
      } else {
        ctx.body = html(cheked);
      }
    } else {
      ctx.body = "没找到";
    }
  } catch (error) {
    console.log(`resetpass : ${error}`);
  }
};
