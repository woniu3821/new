const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        let framesWorke = await transFrames(body)
        let aFrameworke = await dbUtils.query(`
        SELECT framework_table.fid,framework_table.parentid,framework_table.path,framework_table.name,framework_table.icon,
        framework_table.permission,framework_table.button,framework_table.end,authority_table.orders FROM framework_table
        LEFT JOIN authority_table ON framework_table.fid=authority_table.fid  WHERE framework_table.fid in (${framesWorke})
        AND authority_table.uid="${body.uid}" ORDER BY authority_table.orders ASC`);
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