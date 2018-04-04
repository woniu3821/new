const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        let uid = await dbUtils.query(`SELECT uid FROM user_table WHERE uid="${body.uid}"`)
        if (uid.length) {
            let listData = await dbUtils.query(`SELECT * FROM mission_table WHERE ID="${body.id}"`)
            let form = {
                id: listData[0].ID,
                name: listData[0].name,
                date1: listData[0].timeend * 1000,
                date2: parDate2(listData[0].timeend),
                peoples: await transPeople(listData[0].peoples),
                desc: listData[0].detail
            }
            if (listData[0].ID && form.peoples.length > 0) {
                ctx.body = {
                    data: form,
                    success: true
                }
            } else {
                ctx.body = {
                    type: 'error',
                    message: '未知任务'
                }
            }
        } else {
            ctx.body = {
                type: 'error',
                message: '非法用户'
            }
        }
    } catch (error) {
        console.log(`upmission error ${error}`)
    }
}

function parDate2(value) {
    let hours = (new Date(value * 1000)).getHours();
    let minutes = (new Date(value * 1000)).getMinutes();
    let hour = zero(hours);
    let minu = zero(minutes)
    function zero(key) {
        if (key < 10) {
            return key = '0' + key;
        } else {
            return key;
        }
    }
    return `${hour}:${minu}`
}

async function transPeople(data) {
    try {
        var data1 = data.split(",")
        let userlist = data1.map(item => {
            return `"${item}"`
        }).join()
        let user = await dbUtils.query(`SELECT uid FROM user_table WHERE name in (${userlist})`)
        let userData = [];
        for (let { uid } of user) {
            userData.push(uid)
        }
        return userData;

    } catch (error) {
        console.log(error)
    }

}