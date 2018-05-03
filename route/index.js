const Router = require("koa-router");
const upload = require("../middlewares/uploadStorage");
const router = new Router();
router
  .post("/login", require("./admin/login"))
  .post("/captcha", require("./admin/captcha"))
  .post("/upload", upload.single("file"), require("./admin/upload"))
  .post("/logupload", upload.single("img"), require("./admin/logupload"))
  .post("/checkname", require("./admin/checkname"))
  .post("/register", require("./admin/register"))
  .post("/setgroup", require("./admin/setgroup"))
  .post("/getwating", require("./admin/getwating"))
  .post("/getworking", require("./admin/getworking"))
  .post("/getprogress", require("./admin/getprogress"))
  .post("/getmycensus", require("./admin/getmycensus"))
  .post("/getusermap", require("./admin/getusermap"))
  .post("/actionlog", require("./admin/actionlog"))
  .post("/findpass", require("./admin/findpass"))
  .post("/resetpass", require("./user/resetpass"))
  .post("/user/navlist", require("./user/navlist"))
  .post("/user/getframelist", require("./user/getframelist"))
  .post("/user/outfit", require("./user/outfit"))
  .post("/user/build", require("./user/build"))
  .post("/user/created", require("./user/created"))
  .post("/user/upmission", require("./user/upmission"))
  .post("/user/setauthority", require("./user/setauthority"))
  .post("/user/getuserinfo", require("./user/getuserinfo"))
  .post("/user/setmyinfo", require("./user/setmyinfo"))
  .post("/user/subdaily", require("./user/subdaily"))
  .post("/user/getmydaily", require("./user/getmydaily"))
  .get("/getgroup", require("./admin/getgroup"))
  .get("/getgrouptree", require("./admin/getgrouptree"))
  .get("/resetpass", require("./admin/resetpass"));

module.exports = router;
