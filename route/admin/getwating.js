const dbUtils = require("../../middlewares/db-util");

module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  try {
    if (body.id) {
      let newTime = new Date().getTime() / 1000;
      await dbUtils.query(
        `UPDATE task_table SET status=1,accepttime=${newTime} WHERE missionid=${
          body.id
        } AND touser="${body.uid}"`
      );
      ctx.body = {
        success: true,
        type: "success",
        message: "任务接受成功"
      };
    } else {
      let listData = await dbUtils.query(`SELECT mission_table.*,task_table.*,user_table.name FROM task_table LEFT JOIN mission_table ON task_table.missionid=mission_table.ID 
            LEFT JOIN user_table ON user_table.uid="${
              body.uid
            }" WHERE task_table.touser="${
        body.uid
      }" AND (task_table.status=0 OR task_table.status=2)`);
      if (listData.length) {
        ctx.body = {
          success: true,
          data: listData,
          type: "success",
          message: "任务已刷新"
        };
      } else {
        ctx.body = {
          success: false
        };
      }
    }
  } catch (error) {
    console.log(`getwaiting ${error}`);
  }
};
