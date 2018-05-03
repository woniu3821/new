const dbUtils = require("../../middlewares/db-util");
module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  try {
    if (body.id && !body.status) {
      let listData = await dbUtils.query(`
            SELECT task_table.*,user_table.name FROM task_table INNER JOIN
            user_table ON task_table.touser=user_table.uid WHERE task_table.missionid=${
              body.id
            }
            `);
      if (listData.length) {
        ctx.body = {
          success: false,
          data: listData
        };
      } else {
        ctx.body = {
          success: true,
          type: "warning",
          message: "暂无进度信息"
        };
      }
    } else {
      if (body.status == 1) {
        await dbUtils.query(`
            UPDATE mission_table SET comp=1,comp_time=NOW() WHERE ID=${body.id}
            `);
        ctx.body = {
          success: true,
          type: "success",
          message: "任务已确认完成！"
        };
      } else if (body.status == 2) {
        await dbUtils.query(`
            DELETE task_table.*,mission_table.* FROM task_table INNER JOIN mission_table
            ON task_table.missionid=mission_table.ID WHERE task_table.missionid=${
              body.id
            }
            `);
        ctx.body = {
          success: true,
          type: "success",
          message: "任务已删除成功！"
        };
      }
    }
  } catch (error) {
    console.log(`getprogress error ${error}`);
  }
};
