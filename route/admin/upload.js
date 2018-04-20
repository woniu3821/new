const dbUtils = require('../../middlewares/db-util')
const fs = require('fs');
module.exports = async (ctx, next) => {
    try {
        let body = ctx.req.body;
        let file = ctx.req.file;
        let pathdata = await dbUtils.query(`SELECT headpath FROM user_table WHERE uid="${body.uid}"`);
        let headpath = file.path.split('\\').join('/');
        let pathlist = pathdata[0].headpath;
        if (pathlist) {
            function deleteFile() {
                return new Promise((resolve, reject) => {
                    fs.unlink(`./${pathlist}`, function (err) {
                        if (err) {
                            throw err
                        } else {
                            dbUtils.query(`UPDATE user_table SET headpath='${headpath}' WHERE uid='${body.uid}'`);
                            resolve(true);
                        }
                    })
                })
            }
            if (await deleteFile()) ctx.body = "upload success"
        } else {
            await dbUtils.query(`UPDATE user_table SET headpath="${headpath}" WHERE uid="${body.uid}"`);
            ctx.body = "upload success"
        }
    } catch (error) {
        console.log(`upload error: ${error}`)
    }
}