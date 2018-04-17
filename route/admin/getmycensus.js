const dbUtils = require('../../middlewares/db-util')
const utiltool = require('../../middlewares/utiltool')
module.exports = async (ctx, next) => {
    const body = ctx.request.body;
    console.log(body)
    try {
        if (body.uid) {
            let listData = []
            if (!body.radio) {
                listData = await dbUtils.query(`
               SELECT COUNT( CASE WHEN status =1 and intime=0 THEN 1 ELSE NULL END ) AS '0', 
                COUNT( CASE WHEN status =0 THEN 1 ELSE NULL END ) AS '1', 
                COUNT( CASE WHEN status=1 and intime =1  THEN 1 ELSE NULL END ) AS '2', 
                COUNT( CASE WHEN intime =2 THEN 1 ELSE NULL END ) AS '3'
                FROM task_table WHERE touser="${body.uid}"
                `)
            } else {
                if (Array.isArray(body.timerange) && body.timerange.length == 2) {
                    let createdtime = (body.timerange[0]) / 1000
                    let endtime = (body.timerange[1]) / 1000
                    if (body.radio == "个人") {
                        listData = await dbUtils.query(`
                   SELECT COUNT( CASE WHEN status =1 and intime=1 THEN 1 ELSE NULL END ) AS '0', 
                    COUNT( CASE WHEN status =1 and intime=0 THEN 1 ELSE NULL END ) AS '1',
                    COUNT( CASE WHEN status=0 and intime =0  THEN 1 ELSE NULL END ) AS '2', 
                    COUNT( CASE WHEN intime=2 THEN 1 ELSE NULL END ) AS '3'
                    FROM task_table WHERE fromeuser="${body.uid}" AND createdtime>=${createdtime}
                    AND endtime<=${endtime}
                    `)
                    } else {
                        listData = await dbUtils.query(`
                   SELECT COUNT( CASE WHEN status =1 and intime=1 THEN 1 ELSE NULL END ) AS '0', 
                    COUNT( CASE WHEN status =1 and intime=0 THEN 1 ELSE NULL END ) AS '1',
                    COUNT( CASE WHEN status=0 and intime =0  THEN 1 ELSE NULL END ) AS '2', 
                    COUNT( CASE WHEN intime=2 THEN 1 ELSE NULL END ) AS '3'
                    FROM task_table WHERE createdtime>=${createdtime}
                    AND endtime<=${endtime}
                    `)
                    }
                } else {
                    if (body.radio == "个人") {
                        listData = await dbUtils.query(`
                   SELECT COUNT( CASE WHEN status =1 and intime=1 THEN 1 ELSE NULL END ) AS '0', 
                    COUNT( CASE WHEN status =1 and intime=0 THEN 1 ELSE NULL END ) AS '1',
                    COUNT( CASE WHEN status=0 and intime =0  THEN 1 ELSE NULL END ) AS '2', 
                    COUNT( CASE WHEN intime=2 THEN 1 ELSE NULL END ) AS '3'
                    FROM task_table WHERE fromeuser="${body.uid}"
                    `)
                    } else {
                        listData = await dbUtils.query(`
                   SELECT COUNT( CASE WHEN status =1 and intime=1 THEN 1 ELSE NULL END ) AS '0', 
                    COUNT( CASE WHEN status =1 and intime=0 THEN 1 ELSE NULL END ) AS '1',
                    COUNT( CASE WHEN status=0 and intime =0  THEN 1 ELSE NULL END ) AS '2', 
                    COUNT( CASE WHEN intime=2 THEN 1 ELSE NULL END ) AS '3'
                    FROM task_table
                    `)
                    }
                }

            }
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