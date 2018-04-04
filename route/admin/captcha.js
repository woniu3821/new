const svgCaptcha = require('svg-captcha');
const json = require('./json')
module.exports = async (ctx, next) => {
    const body = ctx.request.body
    try {
        var captcha = svgCaptcha.create({
            inverse: false,
            // 字体大小  
            fontSize: 36,
            // 噪声线条数  
            noise: 3,
            // 宽度  
            width: 90,
            // 高度  
            height: 40
        })
        if (body.value) {
            let value = body.value.toLowerCase();
            if (value == json.code) {
                ctx.body = "pass"
            } else {
                json.code = captcha.text.toLowerCase();
                ctx.body = captcha.data;
            }
        } else {
            json.code = captcha.text.toLowerCase();
            ctx.body = captcha.data;
        }
    } catch (error) {
        console.log(`checked error ${error}`)
    }
}