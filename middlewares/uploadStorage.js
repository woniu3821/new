const multer = require('koa-multer');
const fs = require('fs');
const dbUtils = require('./db-util')
let storage = multer.diskStorage({
    //文件保存路径  
    destination: async function (req, file, cb) {
        let body = req.body
        try {
            if (file.fieldname === "file") {
                cb(null, 'static/upload/admin')
            } else if (file.fieldname === "img") {
                let pathdata = await dbUtils.query(`SELECT dirpath FROM user_table WHERE uid="${body.uid}"`);
                let temp_dir = Date.now()
                let pathlist = `static/upload/daily/${temp_dir}`
                if (pathdata[0].dirpath) {
                    fs.exists(pathdata[0].dirpath, function (exists) {
                        if (exists) {
                            cb(null, pathdata[0].dirpath)
                        } else {
                            console.log("多图失败")
                        }
                    });

                } else {
                    fs.exists(pathlist, function (exists) {
                        if (exists) {
                            console.log("dir is already exists")
                            return
                        } else {
                            fs.mkdir(pathlist, function (err) {
                                if (err) {
                                    console.error(err);
                                } else {
                                    cb(null, pathlist)
                                }
                            });
                        }
                    });
                }

            }
        } catch (error) {
            console.log(error)
        }
    },
    //修改文件名称  
    filename: function (req, file, cb) {
        let fileFormat = (file.originalname).split(".");
        cb(null, Date.now() + "." + fileFormat[fileFormat.length - 1]);
    }
})
let upload = multer({
    storage
});
module.exports = upload;