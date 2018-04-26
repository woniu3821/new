let formSub = document.querySelector("#formSub");
let resetForm = document.querySelector("#resetForm");
let passinput = document.querySelector("#pass input");
let passerror = document.querySelector("#pass .el-form-item__error");
let checkinput = document.querySelector("#checked input");
let checkerror = document.querySelector("#checked .el-form-item__error");
formSub.onclick = function() {
  if (passinput.value == "") {
    passerror.innerHTML = "密码不能为空";
    checkerror.innerHTML = "";
    return false;
  } else {
    passerror.innerHTML = "";
    if (checkinput.value == "") {
      checkerror.innerHTML = "请再次输入密码";
      return false;
    } else {
      checkerror.innerHTML = "";
      if (passinput.value !== checkinput.value) {
        checkerror.innerHTML = "两次密码输入不一致";
        return false;
      } else {
        checkerror.innerHTML = "";
      }
    }
  }
};
resetForm.onclick = function() {
  passerror.innerHTML = "";
  checkerror.innerHTML = "";
};
