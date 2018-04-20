const dbUtils = require('../../middlewares/db-util')
module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        if (body.uid) {
            let logList = await dbUtils.query(`SELECT DATE_FORMAT(intime,"%Y-%c-%d %h:%i") as intime,ID,content FROM dailylog_table WHERE uid="${body.uid}" ORDER BY intime DESC`);
            if (logList.length) {
                ctx.body = {
                    type: 'success',
                    success: true,
                    message: '日志获取成功',
                    data: logList
                }
            } else {
                ctx.body = {
                    success: false
                }
            }
        } else {
            ctx.body = {
                type: 'error',
                success: false,
                message: '未知用户',
            }
        }
    } catch (error) {
        console.log(`getmydaily ${error}`)
    }
}