const dbUtils = require("../../middlewares/db-util");

module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  try {
    if (body.id) {
      if (body.overtime) {
        await dbUtils.query(
          `UPDATE task_table SET intime=2 WHERE missionid=${
            body.id
          } AND touser="${body.uid}" AND intime=0`
        );
        ctx.status = 200;
      } else {
        let newTime = new Date().getTime() / 1000;
        await dbUtils.query(
          `UPDATE task_table SET intime=1,complatetime=${newTime} WHERE missionid=${
            body.id
          } AND touser="${body.uid}"`
        );
        ctx.body = {
          success: true,
          type: "success",
          message: "任务已提交完成"
        };
      }
    } else {
      let listData = await dbUtils.query(`SELECT mission_table.*,task_table.*,user_table.name FROM task_table LEFT JOIN mission_table ON task_table.missionid=mission_table.ID 
            LEFT JOIN user_table ON user_table.uid="${
              body.uid
            }" WHERE task_table.touser="${
        body.uid
      }" AND task_table.status=1 AND task_table.intime=0`);
      if (listData.length) {
        ctx.body = {
          success: true,
          data: listData,
          type: "success",
          message: "获取任务成功"
        };
      } else {
        ctx.body = {
          success: false
        };
      }
    }
  } catch (error) {
    console.log(`getworking ${error}`);
  }
};
