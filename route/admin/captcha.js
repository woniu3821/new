const svgCaptcha = require("svg-captcha");
module.exports = async (ctx, next) => {
  const body = ctx.request.body;
  try {
    let captcha = svgCaptcha.create({
      ignoreChars: "0o1i",
      fontSize: 36,
      noise: 3,
      width: 120,
      height: 50,
      color: true,
      size: 4
    });
    if (body.value) {
      let value = body.value.toLowerCase();
      let oldvalue = ctx.session.captcha;
      if (value === oldvalue) {
        this.session = null;
        ctx.body = "pass";
      } else {
        let code = captcha.text.toLowerCase();
        ctx.session.captcha = code;
        ctx.body = captcha.data;
      }
    } else {
      let code = captcha.text.toLowerCase();
      ctx.session.captcha = code;
      ctx.body = captcha.data;
    }
  } catch (error) {
    console.log(`captcha  ${error}`);
  }
};
