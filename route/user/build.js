const dbUtils = require('../../middlewares/db-util')
module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        let times = (new Date(body.times).getTime()) / 1000;
        let timebegain = (new Date().getTime()) / 1000;
        const uid = await dbUtils.query(`SELECT uid FROM user_table WHERE uid="${body.uid}"`)
        let id = await dbUtils.query(`SELECT ID FROM mission_table WHERE ID="${body.id}"`)
        if (uid.length) {
            let newPeoples = await transPeople(body.peoples);
            if (!id[0]) {
                let listData = await dbUtils.query(`INSERT INTO mission_table(uid,name,timebegain,timeend,peoples,detail)
                VALUES ("${body.uid}","${body.name}",${timebegain},${times},"${newPeoples}","${body.detail}")`)
                ctx.body = {
                    type: 'success',
                    message: '任务创建成功'
                }
            } else {
               await dbUtils.query(`UPDATE mission_table SET name="${body.name}",timebegain=${timebegain},timeend=${times},
                peoples="${newPeoples}",detail="${body.detail}" WHERE ID="${body.id}"`)
                ctx.body = {
                    type: 'success',
                    message: '任务修改成功'
                }
            }
        } else {
            ctx.body = {
                type: 'error',
                message: '非法用户'
            }
        }
    } catch (error) {
        console.log(`build error ${error}`)
    }
}

async function transPeople(data) {
    let userlist = data.map(item => {
        return `"${item}"`
    }).join()
    let user = await dbUtils.query(`SELECT name FROM user_table WHERE uid in (${userlist})`)
    let userData = [];
    for (let { name } of user) {
        userData.push(name)
    }
    return userData;
}