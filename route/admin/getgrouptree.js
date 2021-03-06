const dbUtils = require("../../middlewares/db-util");

module.exports = async (ctx, next) => {
  try {
    let listData = await dbUtils.query(
      `SELECT cid,parentid,tags,end FROM organize_table`
    );
    ctx.body = await getJsonTree(listData, "");
  } catch (error) {
    console.log(`getgrouptree ${error}`);
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
          collapsed: false,
          name: node.tags,
          children: await getJsonTree(data, node.cid)
        };
        itemArr.push(newNode);
      }
    }

    return itemArr;
  } catch (error) {
    console.log(error);
  }
}
