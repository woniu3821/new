const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body;
    try {
        if (body.id) {
            await dbUtils.query(`UPDATE task_table SET status=1 WHERE missionid=${body.id} AND touser="${body.uid}"`)
            ctx.body = {
                success: true,
                type: 'success',
                message: "测试"
            }
        } else {
            let listData = await dbUtils.query(`SELECT mission_table.*,task_table.*,user_table.name FROM task_table LEFT JOIN mission_table ON task_table.missionid=mission_table.ID 
            LEFT JOIN user_table ON user_table.uid="${body.uid}" WHERE task_table.touser="${body.uid}" AND task_table.status=1`)
            if (listData.length) {
                ctx.body = {
                    success: true,
                    data: listData,
                    type: 'success',
                    message: "获取任务成功"
                }
            }
        }
    } catch (error) {
        console.log(`user_table error ${error}`)
    }
}