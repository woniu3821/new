const dbUtils = require("../../middlewares/db-util");

module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  try {
    const listData = await dbUtils.query(
      `SELECT name FROM user_table WHERE name="${body.value}"`
    );
    if (listData[0]) {
      ctx.body = "pass";
    } else {
      ctx.body = "";
    }
  } catch (error) {
    console.log(`checkname ${error}`);
  }
};
