const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body
    console.log(body)
    ctx.body = {
        type: 'error',
        success: false,
        message: '测试'
    }
    // try {
    //     let isHas=await dbUtils.query(`SELECT uid,fid FROM authority_table`);
        
    //     let listData = await dbUtils.query(`SELECT cid,parentid,tags,end FROM organize_table`);
    //     const user = await dbUtils.query(`SELECT uid FROM user_table where uid="${body.uid}"`);
    //     let newUser = await dbUtils.query(`SELECT uid,name,outfit,working FROM user_table`);
    //     // JSON.parse(JSON.stringify(allUser))
    //     // console.log(newUser)
    //     if (user.length) {
    //         ctx.body = {
    //             outfit: await getJsonTree(listData, "", newUser)
    //         }
    //     } else {
    //         ctx.body = {
    //             type: 'error',
    //             success: false,
    //             message: '用户列表数据初始化失败'
    //         }
    //     }
    // } catch (error) {
    //     console.log(`outfit error ${error}`)
    // }
}