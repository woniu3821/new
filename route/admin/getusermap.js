const dbUtils = require('../../middlewares/db-util')
module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {

        let nowData = await getTotal('setuptime', 0)
        let pastData = await getTotal('setuptime', 1)
        ctx.body = {
            now: nowData,
            past: pastData
        }
    } catch (error) {
        console.log(`created error ${error}`)
    }
}

async function getTotal(settime, past) {
    let nowYear = new Date().getFullYear();
    past > 0 ? nowYear = nowYear - 1 : nowYear;
    let data = await dbUtils.query(`select DATE_FORMAT(${settime},'%Y-%m') months ,count(uid) as usertotal from user_table
WHERE ${settime} BETWEEN '${nowYear}-01-01' AND '${nowYear}-12-31' group by months order by months ASC`);
    return data;
}