const Koa = require("koa");
const jwt = require("jsonwebtoken");
const jwtKoa = require("koa-jwt");
const bcrypt = require("bcryptjs"); //密码加密
const util = require("util");
const secret = "jwt demo";
const dbUtils = require("../../middlewares/db-util");
const app = new Koa();
app.use(
  jwtKoa({ secret }).unless({
    path: [/^\/register/, /^\/login/, /^\//] //数组中的路径不需要通过jwt验证
  })
);
module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  try {
    const userList = await dbUtils.query(
      `SELECT * FROM user_table WHERE name="${body.name}"`
    );
    let user = userList[0];
    if (!userList.length) {
      ctx.status = 200;
      ctx.body = {
        message: "用户名不存在",
        status: 401
      };
      return;
    } else if (user.password) {
      if (await bcrypt.compare(body.password, user.password)) {
        // 匹配密码是否相等
        const userToken = {
          name: body.name
        };
        let pasttime = "12h";
        if (body.checked) pasttime = 7 * 12 + "h";
        let token = jwt.sign(userToken, secret, {
          expiresIn: pasttime
        });
        ctx.status = 200;
        ctx.body = {
          message: "登录成功",
          login: true,
          uid: `${user.uid}`,
          token
        };
      } else {
        ctx.status = 200;
        ctx.body = {
          message: "密码错误"
        };
      }
    }
  } catch (error) {
    ctx.status = 500;
    ctx.throw(error);
  }
};
