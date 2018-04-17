const Koa = require('koa')
const Router = require('koa-router')
const bodyParser = require('koa-bodyparser')
const multer = require('koa-multer'); //加载koa-multer模块  
const static = require('koa-static');
const path = require('path');
const app = new Koa()
const router = new Router()
app.use(bodyParser())
app.use(static(path.join(__dirname, 'static')));
//文件上传  
//配置  
let storage = multer.diskStorage({
    //文件保存路径  
    destination: function (req, file, cb) {
        cb(null, 'static/upload/')
    },
    //修改文件名称  
    filename: function (req, file, cb) {
        let fileFormat = (file.originalname).split(".");
        cb(null, Date.now() + "." + fileFormat[fileFormat.length - 1]);
    }
})
//加载配置  
let upload = multer({
    storage: storage
});
router
    .post('/login', require('./route/admin/login'))
    .post('/captcha', require('./route/admin/captcha'))
    .post('/upload', upload.single('file'), require('./route/admin/upload'))
    .post('/checkname', require('./route/admin/checkname'))
    .post('/register', require('./route/admin/register'))
    .post('/setgroup', require('./route/admin/setgroup'))
    .post('/getwating', require('./route/admin/getwating'))
    .post('/getworking', require('./route/admin/getworking'))
    .post('/getprogress', require('./route/admin/getprogress'))
    .post('/getmycensus', require('./route/admin/getmycensus'))
    .post('/user/navlist', require('./route/user/navlist'))
    .post('/user/getframelist', require('./route/user/getframelist'))
    .post('/user/outfit', require('./route/user/outfit'))
    .post('/user/build', require('./route/user/build'))
    .post('/user/created', require('./route/user/created'))
    .post('/user/upmission', require('./route/user/upmission'))
    .post('/user/setauthority', require('./route/user/setauthority'))
    .post('/user/getuserinfo', require('./route/user/getuserinfo'))
    .post('/user/setmyinfo', require('./route/user/setmyinfo'))
router
    .get('/getgroup', require('./route/admin/getgroup'))
    .get('/getgrouptree', require('./route/admin/getgrouptree'))

app
    .use(router.routes())
    .use(router.allowedMethods())
app.listen(3000, () => {
    console.log('app listening 3000...')
})