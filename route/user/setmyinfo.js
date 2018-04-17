const dbUtils = require('../../middlewares/db-util')
const bcrypt = require('bcryptjs') //密码加密
module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        if (body.pass) {
            let newpass = await bcrypt.hash(body.pass, 5);
            let passdata = await dbUtils.query(`SELECT password from user_table  WHERE uid="${body.uid}"`);
            if (passdata.length) {
                let oldpass = passdata[0].password;
                if (await bcrypt.compare(body.oldpass, oldpass)) {
                    await dbUtils.query(`UPDATE user_table SET email="${body.email}",password="${newpass}" WHERE uid="${body.uid}"`)
                    ctx.body = {
                        success: true,
                        type: 'success',
                        message: '设置成功'
                    }
                } else {
                    ctx.body = {
                        success: false,
                        type: 'error',
                        message: '旧密码验证失败'
                    }
                }
            }
        } else {
            await dbUtils.query(`UPDATE user_table SET email="${body.email}" WHERE uid="${body.uid}"`)
            ctx.body = {
                success: true,
                type: 'success',
                message: '设置成功'
            }
        }
    } catch (error) {
        console.log(`created error ${error}`)
    }
}