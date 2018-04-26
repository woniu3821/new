const dbUtils = require("../../middlewares/db-util");
module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  try {
    if (body.id) {
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
      ctx.body = {
        success: true,
        type: "error",
        message: "未知任务ID"
      };
    }
  } catch (error) {
    console.log(`getprogress error ${error}`);
  }
};
