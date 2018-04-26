const bcrypt = require("bcryptjs");
const dbUtils = require("../../middlewares/db-util");
let html = require("../../middlewares/resetpass_html");

module.exports = async (ctx, next) => {
  try {
    let body = ctx.request.body;
    let passPattern = /^[a-zA-Z0-9_]{5,15}$/;
    if (body.uid && body.password && passPattern.test(body.password)) {
      let password = await bcrypt.hash(body.password, 5);
      await dbUtils.query(
        `UPDATE user_table SET password="${password}",token=null,token_time=null WHERE uid="${
          body.uid
        }"`
      );
      ctx.body = `<p>密码重置成功！</p>
      <p class="big"><big>5</big>秒后返回登录页面...</p>
      <script>
        let num=5;
        let big=document.querySelector(".big big")
        let timer=setInterval(function(){
            num--;
            big.innerHTML=num;
            if(num==0){
                clearInterval(timer)
                window.location.href="http://localhost:8080"
            }
        },1000)
      </script>
      `;
    } else {
      ctx.status = 404;
    }
  } catch (error) {
    console.log(`resetpass : ${error}`);
  }
};
