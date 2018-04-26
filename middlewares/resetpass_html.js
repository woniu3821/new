module.exports = function html(checked) {
  return `
 <h2 class="title"><span>BLOGSCN—重置密码</span></h2>
    <form class="form" action="/resetpass" method="post">
        <input type="hidden" name="uid" value="${checked[0].uid}">
        <div class="el-form-item is-required">
            <label for="password" class="el-form-item__label">新密码</label>
            <div class="el-form-item__content" id="pass">
                <div class="el-input">
                    <input type="password" id="password" name="password" autocomplete="off" pattern="^[a-zA-Z0-9_]{5,15}$" placeholder="请输入新密码"
                        class="el-input__inner">
                </div>
                <div class="el-form-item__error">

                </div>
            </div>
        </div>
        <div class="el-form-item is-required">
            <label for="check" class="el-form-item__label">确认密码</label>
            <div class="el-form-item__content" id="checked">
                <div data-v-125a8caa="" class="el-input">
                    <input type="password" id="check" autocomplete="off" pattern="^[a-zA-Z0-9_]{5,15}$" placeholder="再次输入密码" class="el-input__inner">
                </div>
                <div class="el-form-item__error">

                </div>
            </div>
        </div>
        <div class="el-form-item__content buttonbox" >
            <button type="submit" id="formSub" class="el-button el-button--primary el-button--medium">
                <span>提交</span>
            </button>
            <button type="reset" id="resetForm" class="el-button el-button--default el-button--medium">
                <span>重置</span>
            </button>
        </div>
    </form>
   <link rel="stylesheet" href="/style/resetpass.css">
    <script src="/js/resetpass.js"></script>
`;
};
