const dbUtils = require('../../middlewares/db-util')
const utiltool = require('../../middlewares/utiltool')
module.exports = async (ctx, next) => {
    const body = ctx.request.body;
    try {
        if (body.uid) {
            let listData = await dbUtils.query(`
           SELECT COUNT( CASE WHEN status =1 and intime=0 THEN 1 ELSE NULL END ) AS '0', 
            COUNT( CASE WHEN status =0 THEN 1 ELSE NULL END ) AS '1', 
            COUNT( CASE WHEN status=1 and intime =1  THEN 1 ELSE NULL END ) AS '2', 
            COUNT( CASE WHEN status =2 THEN 1 ELSE NULL END ) AS '3'
            FROM task_table WHERE touser="${body.uid}"
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
                    message: "暂无统计信息"
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