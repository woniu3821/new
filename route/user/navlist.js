const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        let framesWorke = await transFrames(body)
        let frames = await dbUtils.query(`SELECT frames FROM user_table WHERE uid="${body.uid}"`);
        let aFrameworke = await dbUtils.query(`SELECT * FROM framework_table WHERE ID in (${framesWorke}) ORDER BY orders ASC`);
        ctx.body = await getJsonTree(aFrameworke, 0)
    } catch (error) {
        console.log(`navlist error ${error}`)
    }
}

async function getJsonTree(data, parentId) {
    try {
        let itemArr = [];
        for (let i = 0; i < data.length; i++) {
            let node = data[i];
            if (node.parentid == parentId) {
                itemArr.push({ path: node.path, name: node.name, end:node.end, icon: node.icon, permission: await transPermission(node.permission), child: await getJsonTree(data, node.fid) });  
            }
        }
        return itemArr
    } catch (error) {
        console.log(error)
    }
}
async function transPermission(params) {
    if (params && params.length) return params.split(",")
}

async function transFrames(body) {
    try {
        let frames = await dbUtils.query(`SELECT frames FROM user_table WHERE uid="${body.uid}"`);
        let framesData = frames[0].frames.split(",");
        let nframesData = framesData.map(item => {
            return `"${item}"`
        })
        return nframesData;
    } catch (error) {
        console.log(error)
    }
}