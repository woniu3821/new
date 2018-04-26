const nodemailer = require("nodemailer");
let smtpTransport = require("nodemailer-smtp-transport");
const config = require("./emai.config");
smtpTransport = nodemailer.createTransport(
  smtpTransport({
    service: config.email.service,
    auth: {
      user: config.email.user,
      pass: config.email.pass
    }
  })
);
let sendMail = (touser, title, html) => {
  return new Promise((resolve, reject) => {
    smtpTransport.sendMail(
      { from: config.email.user, to: touser, subject: title, html: html },
      (error, info) => {
        if (error) {
          console.log(error);
          reject(false);
        } else {
          resolve(true);
        }
      }
    );
  });
};

module.exports = sendMail;
