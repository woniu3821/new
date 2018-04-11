const dbUtils = require('../../middlewares/db-util')
const utiltool = require('../../middlewares/utiltool')
module.exports = async (ctx, next) => {
    const body = ctx.request.body;
    try {
        if (body.id) {
            let inpeoples = utiltool.inParse(body.peoples)
            let listData = await dbUtils.query(`
            SELECT task_table.*,user_table.name FROM task_table LEFT JOIN user_table ON user_table.name IN(${inpeoples}) 
            WHERE task_table.missionid=${body.id} AND (task_table.status=1 OR task_table.intime=1)
            `)
            if (listData.length) {
                ctx.body = {
                    success: false,
                    data: listData
                }
            } else {
                ctx.body = {
                    success: true,
                    type: 'warning',
                    message: "暂无进度信息"
                }
            }
        } else {
            ctx.body = {
                success: true,
                type: 'error',
                message: "未知任务ID"
            }
        }
    } catch (error) {
        console.log(`getprogress error ${error}`)
    }
}