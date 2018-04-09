const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body;
    try {
        let listData = await dbUtils.query(`SELECT mission_table.*,task_table.*,user_table.name FROM task_table LEFT JOIN mission_table ON task_table.missionid=mission_table.ID 
LEFT JOIN user_table ON user_table.uid="${body.uid}" WHERE task_table.touser="${body.uid}" AND task_table.status=0"`)
        if (listData.length) {
            ctx.body = {
                success:true,
                data: listData
            }
        }else{
            ctx.body = {
                success: true,
                data: []
            } 
        } 
    } catch (error) {
        console.log(`user_table error ${error}`)
    }
}