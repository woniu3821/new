const dbUtils = require("../../middlewares/db-util");

module.exports = async (ctx, next) => {
  try {
    let listData = await dbUtils.query(
      `SELECT cid,parentid,tags,end FROM organize_table`
    );
    ctx.session.group = await getJsonTree(listData, "");
    ctx.body = ctx.session.group;
  } catch (error) {
    console.log(`getgroup error ${error}`);
  }
};

async function getJsonTree(data, parentId) {
  try {
    let itemArr = [];
    for (let i = 0; i < data.length; i++) {
      let node = data[i];
      //data.splice(i, 1)
      if (node.parentid == parentId) {
        let newNode = {
          value: node.cid,
          label: node.tags,
          children: await getJsonTree(data, node.cid)
        };
        if (node.end) {
          itemArr.push({ value: node.cid, label: node.tags });
        } else {
          itemArr.push(newNode);
        }
      }
    }

    return itemArr;
  } catch (error) {
    console.log(error);
  }
}
