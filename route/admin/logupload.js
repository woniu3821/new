const dbUtils = require('../../middlewares/db-util')
module.exports = async (ctx, next) => {
    try {
        let body = ctx.req.body;
        let file = ctx.req.file;
        let pathdata = await dbUtils.query(`SELECT dirpath FROM user_table WHERE uid="${body.uid}"`);
        let odirpath = file.destination
        if (pathdata[0].dirpath) {
            ctx.body = file;
        } else {
            await dbUtils.query(`UPDATE user_table SET dirpath="${odirpath}" WHERE uid="${body.uid}"`);
            ctx.body = file;
        }

    } catch (error) {
        console.log(`upload error: ${error}`)
    }
}