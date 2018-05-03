const jwt = require("jsonwebtoken"); //生成token
const bcrypt = require("bcryptjs"); //密码加密
const util = require("util");
const secret = "jwt dsaquioweqiewiqld9DU*sjildas";
const dbUtils = require("../../middlewares/db-util");

module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  try {
    let userList = await dbUtils.query(
      `SELECT * FROM user_table WHERE name="${body.name}"`
    );
    let user = userList[0];
    if (
      userList.length &&
      (await bcrypt.compare(body.password, user.password))
    ) {
      // 匹配密码是否相等
      const userToken = {
        name: body.name
      };
      let pasttime = "12h";
      if (body.checked) pasttime = 7 * 12 + "h";
      let token = jwt.sign(userToken, secret, {
        expiresIn: pasttime
      });
      ctx.body = {
        success: true,
        type: "success",
        message: "登录成功",
        login: true,
        uid: `${user.uid}`,
        token
      };
    } else {
      ctx.body = {
        success: false,
        type: "warning",
        message: "用户名或者密码有误！"
      };
    }
  } catch (error) {
    ctx.status = 500;
    ctx.throw(error);
  }
};
