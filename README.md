# 工作流项目后台
### 项目说明
- 此后台项目需要配合[前台项目](https://github.com/woniu3821/funck)使用
- 后台全部使用接口的方式和前台实现数据交互
- 数据库文件放在了`sql文件夹`下，使用navicat工具导入就可以使用了。（我这里为了开发方便直接是在本地装了`wamp环境`）
- 我使用的是vscode IDE 微软的一款开发编辑器，可以很方便的切换控制台到项目下,执行`node service.js` <br>如果顺利的话，就可以看到项目在3000端口运行了
---
## 技术栈
nodejs/Koa2/Koa-router/koa-bodyparser/koa-static/jsonwebtoken/koa-jwt/bcryptjs/svg-captcha
---
### 技术栈的简单说明
- koa2<br>
  借用官方的介绍：koa 是由 Express 原班人马打造的，致力于成为一个更小、更富有表现力、更健壮的 Web 框架。 使用 koa 编写 web 应用，通过组合不同的    generator，可以免除重复繁琐的回调函数嵌套， 并极大地提升错误处理的效率。koa 不在内核方法中绑定任何中间件， 它仅仅提供了一个轻量优雅的函数库，使得编   写 Web 应用变得得心应手。
