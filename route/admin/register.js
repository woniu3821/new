const bcrypt = require('bcryptjs')//密码加密
const dbUtils = require('../../middlewares/db-util')
module.exports = async (ctx) => {
    const body = ctx.request.body
    try {
        let passPattern = /^[a-zA-Z0-9_]{5,15}$/
        if (!body.name && !passPattern.test(body.password) && !body.groups) {
            ctx.status = 400;
            ctx.body = {
                type: 'error',
                message: '验证错误'
            }
            return;
        }
        let user = await dbUtils.query(`SELECT name FROM user_table WHERE name="${body.name}"`)
        if (!user.length) {
            let password = await bcrypt.hash(body.password, 5)
            let uid = await bcrypt.hash(`${body.name}${body.groups}`, 5)

            await dbUtils.query(`INSERT INTO user_table(uid,name,password,outfit,level)
                VALUES ("${uid}","${body.name}","${password}","${body.groups}",0)`);
            await dbUtils.query(`INSERT INTO authority_table(uid,fid,permission,orders)
             SELECT "${uid}",1,null,1
             UNION ALL
             SELECT "${uid}",2,null,2
             UNION ALL
             SELECT "${uid}",3,null,3
             UNION ALL
             SELECT "${uid}",4,null,4
             UNION ALL
             SELECT "${uid}",5,null,1
             UNION ALL
             SELECT "${uid}",6,null,1
             UNION ALL
             SELECT "${uid}",7,null,1
             UNION ALL
             SELECT "${uid}",8,null,1
             UNION ALL
             SELECT "${uid}",9,null,1
             UNION ALL
             SELECT "${uid}",10,null,1
             UNION ALL
             SELECT "${uid}",11,null,1
             UNION ALL
             SELECT "${uid}",12,null,1
             UNION ALL
             SELECT "${uid}",13,null,1
             UNION ALL
             SELECT "${uid}",14,null,1
             UNION ALL
             SELECT "${uid}",15,null,1
             UNION ALL

             `);
            ctx.status = 200;
            ctx.body = {
                success: true,
                type: 'success',
                message: `注册成功, 正在跳转到登录页面...`
            }
        } else {
            ctx.status = 406;
            ctx.body = {
                type: 'error',
                message: '用户已存在'
            }
        }
    } catch (error) {
        ctx.throw(500)
    }
}