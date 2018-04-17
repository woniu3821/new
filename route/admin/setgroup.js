const bcrypt = require('bcryptjs') //密码加密
const dbUtils = require('../../middlewares/db-util')
const key = "dksa45jfdsaf8i4edhjiafeq%737889"
module.exports = async (ctx) => {
    const body = ctx.request.body;
    try {
        let data = body.name;
        let success = {
            type: 'success',
            message: `设置成功`
        }
        if (!data.company) {
            let user = await dbUtils.query(`SELECT * FROM organize_table WHERE parentid="${body.name}"`)
            ctx.body = user
        } else if (data.end) {

            let time = new Date().getTime() / 1000
            let cidCompany = await dbUtils.query(`SELECT cid FROM organize_table WHERE cid="${data.company}"`)
            let cidGroups = await dbUtils.query(`SELECT cid FROM organize_table WHERE cid="${data.groups}"`)
            let cidOrganize = await dbUtils.query(`SELECT cid FROM organize_table WHERE cid="${data.organize}"`)
            let cidTeam = await dbUtils.query(`SELECT cid FROM organize_table WHERE cid="${data.team}"`)

            if (data.company && !data.groups && !data.organize && !data.team) { //公司
                if (cidCompany.length == 0) {
                    let companyHash = await bcrypt.hash(`${data.company}${key}`, 5);
                    await dbUtils.query(`INSERT INTO organize_table(cid,parentid,seter,lastchange,tags,end,flag)
                VALUES ("${companyHash}","","${body.uid}","${time}","${data.company}",1,"company")`);
                    ctx.body = success;
                } else {
                    ctx.body = {
                        type: 'error',
                        message: `ID已经存在`
                    }
                }
            }
            if (data.company && data.groups && !data.organize && !data.team) { //部门
                console.log(cidCompany)
                if (cidCompany.length > 0 && cidGroups.length == 0) {
                    let groupsHash = await bcrypt.hash(`${data.groups}${key}`, 5);
                    await dbUtils.query(`UPDATE organize_table SET end=0 WHERE cid="${data.company}"`);
                    await dbUtils.query(`INSERT INTO organize_table(cid,parentid,seter,lastchange,tags,end,flag)
                VALUES ("${groupsHash}","${data.company}","${body.uid}","${time}","${data.groups}",1,"groups")`);
                    ctx.body = success;
                } else {
                    ctx.body = {
                        type: 'warning',
                        message: `请逐级添加组织`
                    }
                }
            }
            if (data.company && data.groups && data.organize && !data.team) { //组织
                if (cidCompany.length > 0 && cidGroups.length > 0 && cidOrganize.length == 0) {
                    let organizeHash = await bcrypt.hash(`${data.organize}${key}`, 5);
                    await dbUtils.query(`UPDATE organize_table SET end=0 WHERE cid="${data.groups}"`);
                    await dbUtils.query(`INSERT INTO organize_table(cid,parentid,seter,lastchange,tags,end,flag)
                VALUES ("${organizeHash}","${data.groups}","${body.uid}","${time}","${data.organize}",1,"organize")`);
                    ctx.body = success;
                } else {
                    ctx.body = {
                        type: 'warning',
                        message: `请逐级添加组织`
                    }
                }
            }
            if (data.company && data.groups && data.organize && data.team) { //小组
                if (cidCompany.length > 0 && cidGroups.length > 0 && cidOrganize.length > 0 && cidTeam.length == 0) {
                    let teamHash = await bcrypt.hash(`${data.team}${key}`, 5);
                    await dbUtils.query(`UPDATE organize_table SET end=0 WHERE cid="${data.organize}"`);
                    await dbUtils.query(`INSERT INTO organize_table(cid,parentid,seter,lastchange,tags,end,flag)
                VALUES ("${teamHash}","${data.organize}","${body.uid}","${time}","${data.team}",1,"team")`);
                    ctx.body = success;
                } else {
                    ctx.body = {
                        type: 'warning',
                        message: `无效操作`
                    }
                }
            }

        }
    } catch (error) {
        console.log(error)
        ctx.throw(500)
    }
}