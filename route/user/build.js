const dbUtils = require("../../middlewares/db-util");
const utiltool = require("../../middlewares/utiltool");
module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  let inuid = utiltool.inParse(body.peoples);
  try {
    let times = new Date(body.times).getTime() / 1000;
    let timebegain = new Date().getTime() / 1000;
    let id = await dbUtils.query(
      `SELECT ID FROM mission_table WHERE ID="${body.id}"`
    );
    let newPeoples = await transPeople(body.peoples);
    if (!id[0]) {
      await dbUtils.query(`INSERT INTO mission_table(uid,title,timebegain,timeend,peoples,detail)
                VALUES ("${body.uid}","${
        body.title
      }",${timebegain},${times},"${newPeoples}","${body.detail}")`);
      await dbUtils.query(`INSERT INTO task_table(touser,missionid,createdtime,endtime,fromeuser) SELECT user_table.uid,mission_table.ID,mission_table.timebegain,mission_table.timeend,mission_table.uid FROM mission_table
                LEFT JOIN user_table ON user_table.uid IN (${inuid}) WHERE mission_table.detail="${
        body.detail
      }" AND mission_table.timeend=${times}`);
      ctx.body = {
        type: "success",
        message: "任务创建成功"
      };
    } else {
      await dbUtils.query(`UPDATE mission_table SET title="${
        body.title
      }",timebegain=${timebegain},timeend=${times},
                peoples="${newPeoples}",detail="${body.detail}" WHERE ID=${
        body.id
      }`);
      await dbUtils.query(`DELETE FROM task_table WHERE missionid=${body.id}`);
      await dbUtils.query(`INSERT INTO task_table(status,touser,missionid,createdtime,endtime,fromeuser) SELECT 2,user_table.uid,mission_table.ID,mission_table.timebegain,mission_table.timeend,mission_table.uid FROM mission_table
                LEFT JOIN user_table ON user_table.uid IN (${inuid}) WHERE mission_table.ID=${
        body.id
      }`);
      ctx.body = {
        type: "success",
        message: "任务修改成功"
      };
    }
  } catch (error) {
    ctx.body = {
      type: "error",
      message: "任务创建失败"
    };
    console.log(`build error ${error}`);
  }
};

async function transPeople(data) {
  let userlist = data
    .map(item => {
      return `"${item}"`;
    })
    .join();
  let user = await dbUtils.query(
    `SELECT name FROM user_table WHERE uid in (${userlist})`
  );
  let userData = [];
  for (let { name } of user) {
    userData.push(name);
  }
  return userData;
}
