const dbUtils = require("./db-util");
const utitool = require("./utiltool");

module.exports = {
  async saveUserSocketId(userId, working, socketId) {
    const sql = "update user_table set socketid=?,working=? where uid=? limit 1 ";
    await dbUtils.query(sql, [socketId, working, userId]);
  },
  async findUserOnline(peoples) {
    const sql = `select email,socketid from user_table where uid in (${utitool.inParse(
      peoples
    )})`;
    return await dbUtils.query(sql);
  },
  async getBaseData(uid) {
    return new Promise((resolve, reject) => {
      const sql = `SELECT 
      COUNT( CASE WHEN status=0 or status=2 THEN 1 ELSE NULL END ) AS wait, 
      COUNT( CASE WHEN status=1 and intime=0 THEN 1 ELSE NULL END ) AS work
      FROM task_table where touser="${uid}"`;
      dbUtils
        .query(sql)
        .then(res => {
          resolve(res);
        })
        .catch(err => {
          reject(err);
        });
    });
  }
};