const dbUtils = require("../../middlewares/db-util");

module.exports = async (ctx, next) => {
  let body = ctx.request.body;
  try {
    let raturns = await dbUtils.query(
      `INSERT INTO actionlog_table(path,time,name) SELECT 
      '${body.path}',NOW(),name FROM 
        user_table WHERE uid='${body.uid}'`
    );
    if (raturns.affectedRows) ctx.status = 200;
  } catch (error) {
    console.log(`actions_table ${error}`);
  }
};
