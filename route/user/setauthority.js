const dbUtils = require('../../middlewares/db-util')
const utiltool=require('../../middlewares/utiltool')
module.exports = async (ctx, next) => {
    let body = ctx.request.body
    let sub=body.subdata;
    let inuid = utiltool.inParse(body.peoples)
    try {
        await dbUtils.query(`UPDATE user_table SET frames="${body.frames}" WHERE uid IN(${inuid})`)
        await dbUtils.query(`UPDATE authority_table SET permission=CASE fid
        WHEN 1 THEN "${sub['1'].permission}"
        WHEN 2 THEN "${sub['2'].permission}"
        WHEN 3 THEN "${sub['3'].permission}"
        WHEN 4 THEN "${sub['4'].permission}"
        WHEN 5 THEN "${sub['5'].permission}"
        WHEN 6 THEN "${sub['6'].permission}"
        WHEN 7 THEN "${sub['7'].permission}"
        WHEN 8 THEN "${sub['8'].permission}"
        WHEN 9 THEN "${sub['9'].permission}"
        WHEN 10 THEN "${sub['10'].permission}"
        WHEN 11 THEN "${sub['11'].permission}"
        WHEN 12 THEN "${sub['12'].permission}"
        WHEN 13 THEN "${sub['13'].permission}"
        WHEN 14 THEN "${sub['14'].permission}"
        WHEN 15 THEN "${sub['15'].permission}"
        END,
        orders=CASE fid
        WHEN 1 THEN ${sub['1'].order}
        WHEN 2 THEN ${sub['2'].order}
        WHEN 3 THEN ${sub['3'].order}
        WHEN 4 THEN ${sub['4'].order}
        WHEN 5 THEN ${sub['5'].order}
        WHEN 6 THEN ${sub['6'].order}
        WHEN 7 THEN ${sub['7'].order}
        WHEN 8 THEN ${sub['8'].order}
        WHEN 9 THEN ${sub['9'].order}
        WHEN 10 THEN ${sub['10'].order}
        WHEN 11 THEN ${sub['11'].order}
        WHEN 12 THEN ${sub['12'].order}
        WHEN 13 THEN ${sub['13'].order}
        WHEN 14 THEN ${sub['14'].order}
        WHEN 15 THEN ${sub['15'].order}
        END
        WHERE uid IN(${inuid})`); 
        ctx.body = {
            type: 'success',
            success: true,
            message: '权限设置成功'
        }   
    } catch (error) {
        ctx.body = {
            type: 'error',
            success: false,
            message: '权限设置失败'
        }
        console.log(`setauthority error ${error}`)
    }
}