const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        const listData = await dbUtils.query(`SELECT name,working,headpath FROM user_table WHERE uid="${body.uid}"`)
        if (listData.length) {
            ctx.body = {
                path: listData[0].headpath,
                name: listData[0].name,
                worke: listData[0].working
            }
        } else {
            ctx.status = 406;
        }
    } catch (error) {
        console.log(`created error ${error}`)
    }
}