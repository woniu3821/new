const dbUtils = require('../../middlewares/db-util')
const fs = require('fs')
const path = require('path')
const deleteFolder = require('../../middlewares/deleteFolder')
module.exports = async (ctx, next) => {
    try {
        let body = ctx.request.body;
        let oContent = body.content;
        let newContent = await imgCheck(oContent)
        if (body.id) {
            await dbUtils.query(`UPDATE dailylog_table SET intime=NOW(),content='${newContent}'
            WHERE ID=${body.id}`);
            ctx.body = {
                success: true,
                type: 'success',
                message: '日志修改成功'
            }
        } else {
            let pathdata = await dbUtils.query(`INSERT INTO dailylog_table(uid,intime,content)
             VALUES ("${body.uid}",NOW(),'${newContent}')`);
            ctx.body = {
                success: true,
                type: 'success',
                message: '日志提交成功'
            }
        }
    } catch (error) {
        ctx.status = 500;
        console.log(`subdaily error: ${error}`)
    }
}

async function imgCheck(oContent) {
    let newContent = await existsCheck(oContent);
    if (newContent.nContent && newContent.nSrc) {
        let fileUrl = newContent.nSrc.replace(/[0-9]{13}\..+/i, "")
        let dec = path.join('static', fileUrl)
        deleteFolder(dec)
        return newContent.nContent;
    } else {
        if (typeof newContent == "object") {
            return newContent.nContent
        } else {
            return newContent
        }
    }

    function existsCheck(oContent) {
        let imgReg = /<img.*?(?:>|\/>)/gi;
        let aImg = oContent.match(imgReg);
        let srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
        return new Promise((resolve, reject) => {
            if (Array.isArray(aImg) && aImg.length) {
                let newPath = null;
                let oSrc = null;
                for (let img of aImg) {
                    let src = img.match(srcReg);
                    let exp = /[0-9]{13}[\/]/; //巧了中招了图片就不显示了
                    newPath = src[1].replace(exp, "");
                    if (src[1].length > 41 && src[1].match(/^\/upload\/daily\/\d{13}\/\d{13}/)) {
                        let realPath = path.join('static', src[1]);
                        let destPath = path.join('static', newPath)
                        fs.exists(realPath, function (exists) {
                            if (exists) {
                                fs.rename(realPath, destPath, function (err) {
                                    if (err)
                                        throw err
                                })
                            }
                        });
                        oSrc = src[1];
                        oContent = oContent.replace(src[1], newPath)
                    }
                }
                setTimeout(() => {
                    resolve({
                        nContent: oContent,
                        nSrc: oSrc
                    })
                }, 0);

            } else {
                resolve(oContent)
            }

        })
    }
}