const dbUtils = require('../../middlewares/db-util')
const fs = require('fs')
module.exports = async (ctx, next) => {
    let body = ctx.request.body;
    console.log(body)
    try {
        if (body.id) {
            await dbUtils.query(`UPDATE dailylog_table SET intime=NOW(),content='${body.content}'
            WHERE ID={body.id}`);
            ctx.body = {
                success: true,
                type: 'success',
                message: '日志修改成功'
            }
        } else {
            let pathdata = await dbUtils.query(`INSERT INTO dailylog_table(uid,intime,content)
             VALUES ("${body.uid}",NOW(),'${body.content}')`);
            ctx.body = {
                success: true,
                type: 'success',
                message: '日志提交成功'
            }
        }
    } catch (error) {
        ctx.status = 500;
        console.log(`subdaily error: ${error}`)
    }
}