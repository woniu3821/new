module.exports = {
  whiteList: {
    path: [
      /^\/register/,
      /^\/login/,
      /^\/captcha/,
      /^\/getgroup/,
      /^\/checkname/,
      /^\/upload/,
      /^\/js/,
      /^\/style/,
      /^\/findpass/,
      /^\/resetpass/,
      /^\/favicon.ico/
    ] //数组中的路径不需要通过jwt验证
  },
  secret: "jwt dsaquioweqiewiqld9DU*sjildas",
  keys: ["daklfjkldafklfdsajkfliiwr6738426478"],
  email: {
    service: "QQ",
    user: "cuimmcan@qq.com",
    pass: "qtisysqvepasbdee"
  },
  session_config: {
    key: "session",
    maxAge: 86400000,
    overwrite: true,
    httpOnly: true,
    signed: true,
    rolling: false,
    renew: false
  },
  url: "http://www.blogscn.com/",
  newhtml: `
        <h2>您有新的任务待接收，请及时查收！</h2>
        <h3><a href="${this.url}">>>点击此处<<</a>去登陆！</h3>
        `,
  oldhtml: `
        <h2>您有任务已修改或取消，请及时查看！</h2>
        <h3><a href="${this.url}">>>点击此处<<</a>去登陆！</h3>
        `
};
