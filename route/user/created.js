const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        const listData = await dbUtils.query(`SELECT * FROM mission_table WHERE uid="${body.uid}" ORDER BY timeend DESC LIMIT 20`)
        ctx.body = {
            created: listData
        }
    } catch (error) {
        console.log(`created error ${error}`)
    }
}