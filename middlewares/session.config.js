const CONFIG = {
  key: "session-captcha",
  maxAge: 86400000,
  overwrite: true,
  httpOnly: true,
  signed: true,
  rolling: false,
  renew: false
};

module.exports = CONFIG;
