const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        let listData = await dbUtils.query(`SELECT cid,parentid,tags,end FROM organize_table`);
        let user = await dbUtils.query(`SELECT uid FROM user_table where uid="${body.uid}"`);
        let newUser = await dbUtils.query(`SELECT uid,name,outfit,working FROM user_table`);
        if (user.length) {
            ctx.body = {
                outfit:await getJsonTree(listData, "", newUser)
            }
        } else {
            ctx.body = {
                type: 'error',
                success: false,
                message: '用户列表数据初始化失败'
            }
        }
    } catch (error) {
        console.log(`outfit error ${error}`)
    }
}
async function getJsonTree(data, parentId, dataUser) {
    try {
        let itemArr = [];
        for (let i = 0; i < data.length; i++) {
            let node = data[i];
            //data.splice(i, 1)
            if (node.parentid == parentId) {
                let newNode = { id: node.cid, label: node.tags, children:await getJsonTree(data, node.cid, dataUser) };
                if (node.end) {
                    let userArr = []
                    for (let { uid, outfit, name, working } of dataUser) {
                        if (node.cid == outfit) {
                            userArr.push({ id: uid, label: `${name}(${working})`,end:true })
                        }
                    }
                    if (userArr.length) {
                        itemArr.push({ id: node.cid, label: node.tags, children: userArr });
                    } else {
                        itemArr.push({ id: node.cid, label: node.tags, disabled:true});
                    }

                } else {

                    itemArr.push(newNode);
                }
            }
        }
        return itemArr
    } catch (error) {
        console.log(error)
    }
}

