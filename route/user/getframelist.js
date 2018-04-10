const dbUtils = require('../../middlewares/db-util')

module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        if (body.uid) {
            let aFrames = await dbUtils.query(`SELECT authority_table.fid, 
            authority_table.permission,authority_table.orders, user_table.frames FROM authority_table INNER JOIN user_table
            ON authority_table.uid=user_table.uid WHERE authority_table.uid="${body.uid}"`);
            ctx.body = aFrames; 
        } else {
            let aFrameworke = await dbUtils.query(`SELECT * FROM framework_table`);
            ctx.body =aFrameworke;

        }
    } catch (error) {
        console.log(`getoutlist error ${error}`)
    }
}
/* async function getJsonTree(data, parentId) {
    try {
        let itemArr = [];
        for (let i = 0; i < data.length; i++) {
            let node = data[i];
            if (node.parentid == parentId) {
                let newNode = { id: node.ID, label: node.name, children: await getJsonTree(data, node.fid) };
                itemArr.push(newNode);
            }
        }
        return itemArr
    } catch (error) {
        console.log(error)
    }
} */