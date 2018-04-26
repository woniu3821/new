const dbUtils = require("../../middlewares/db-util");
const sedEmail = require("../../middlewares/sendEmail");
const crypto = require("crypto");
const md5 = crypto.createHash("md5");

module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  try {
    if (body.name && body.email) {
      let listData = await dbUtils.query(`
            SELECT uid,name,email FROM user_table WHERE name="${
              body.name
            }" AND email="${body.email}"
            `);

      if (listData.length) {
        let email = encodeURIComponent(body.email);
        let name = body.name;
        md5.update(`${name}${email}`);
        let token = md5.digest("hex");
        let url = `http://wwww.blogscn.com/resetpass?email=${email}&token=${encodeURIComponent(
          token
        )}`;
        let html = `
        <h2>本邮件由系统自动发送，请勿回复！</h2>
        请您在5分钟内点击<a href="${url}">${url}</a>重置您的密码！
        `;
        let send = await sedEmail(
          "1470758149@qq.com",
          "<www.blogscn.com>找回密码 √",
          html
        );
        if (send) {
          await dbUtils.query(
            `UPDATE user_table SET token="${token}",token_time=NOW() WHERE uid="${
              listData[0].uid
            }"`
          );
          ctx.body = {
            success: true,
            type: "success",
            message: "邮件发送成功！请注意查收邮件重置密码。"
          };
        }
      } else {
        ctx.body = {
          success: false,
          type: "error",
          message: "信息验证错误，请确认账户是否存在"
        };
      }
    } else {
    }
  } catch (error) {
    console.log(`finpass ${error}`);
  }
};
