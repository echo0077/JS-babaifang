(function () {
    let formSignTel = document.querySelector('.form-sign-tel');
    let phoneSign = document.querySelector('.phone-sign');
    let phoneInline = document.querySelector('.phone-inline');
    let email = document.querySelector('.email');
    console.log(email);

    let sign = document.querySelector('.sign');
    let hint = document.querySelector('.hint');
    let passwordSignHide = document.querySelector('.password-sign-hide');
    let passwordSignShow = document.querySelector('.password-sign-show');
    let passwordInlineHide = document.querySelector('.password-inline-hide');
    let passwordInlineShow = document.querySelector('.password-inline-show');
    let signSubmit = document.querySelector('.sign-submit');
    let statusInline = document.querySelector('.status-inline');
    let statussign = document.querySelector('.status-sign');
    let signEye = document.querySelector('.sign-eye');
    let inlineEye = document.querySelector('.inline-eye');
    let lyRt = document.querySelector('.ly_rt');
    let lyr = document.querySelector('.ly_r');
    let btnHdLogin = document.querySelector('.btn-hd-login');
    let forRegister = document.querySelector('.for_register');
    let btnHdTel = document.querySelector('.btn-hd-tel');
    let btnHdEmail = document.querySelector('.btn-hd-email');
    let formInlineEmail = document.querySelector('.form-inline-email');
    let formInlineTel = document.querySelector('.form-inline-tel');
    let loginBtnSubmit = document.querySelector('.login-btn-submit');

    let isok1 = true;
    let isok2 = false;
    let isok3 = false;


    //点击跳转到登录页面
    btnHdLogin.onclick = function () {
        lyr.style.display = 'none';
        lyRt.style.display = 'block';
    }

    //点击跳转到注册页面
    forRegister.onclick = function () {
        lyr.style.display = 'block';
        lyRt.style.display = 'none';
    }

    //点击跳转到邮箱页面
    btnHdEmail.onclick = function () {
        formInlineEmail.style.display = 'block';
        btnHdEmail.className = 'btn-hd-email current';
        btnHdTel.className = 'btn-hd-tel';
        formInlineTel.style.display = 'none';
        passwordInlineShow.value = '';
        passwordInlineHide.value = '';
        sign.style.display = 'none';

    }
    //点击跳转到电话页面 
    btnHdTel.onclick = function () {
        formInlineTel.style.display = 'block';
        btnHdTel.className = 'btn-hd-tel current';
        btnHdEmail.className = 'btn-hd-email';
        formInlineEmail.style.display = 'none';
        passwordInlineShow.value = '';
        passwordInlineHide.value = '';
    }

    statussign.onclick = function () {
        if (isok2) {
            signSubmit.className = 'sign-submit form-sign';
        } else {
            signSubmit.className = 'sign-submit-gray form-sign';
        }
        isok2 = !isok2;
    }

    signEye.onclick = inlineEye.onclick = function () {
        if (isok3) {
            signEye.className = 'change-eye eye-hide sign-eye';
            inlineEye.className = 'change-eye eye-hide inline-eye';
            passwordSignHide.style.display = ' inline-block';
            passwordSignShow.style.display = 'none';
            passwordInlineHide.style.display = ' inline-block';
            passwordInlineShow.style.display = 'none';
            passwordSignHide.value = passwordSignShow.value;
            passwordInlineHide.value = passwordInlineShow.value;
        } else {
            signEye.className = 'change-eye eye-show sign-eye';
            inlineEye.className = 'change-eye eye-show inline-eye';
            passwordSignShow.style.display = ' inline-block';
            passwordSignHide.style.display = 'none';
            passwordInlineShow.style.display = ' inline-block';
            passwordInlineHide.style.display = 'none';
            passwordSignShow.value = passwordSignHide.value;
            passwordInlineShow.value = passwordInlineHide.value;
        }
        isok3 = !isok3;
    }

    function checkInput(opt) {
        phoneSign.onblur = phoneInline.onblur = function () {
            let val = phoneSign.value.trim();
            let val1 = phoneInline.value.trim();
            if (val || val1) {
                let str = `checkReg.${opt.type}(val)`;//eval() 把字符串转成js代码
                let str1 = `checkReg.${opt.type}(val1)`;//eval() 把字符串转成js代码
                let isok = eval(str);
                let isok1 = eval(str1);

                if (isok || isok1) {
                    sign.style.display = 'none';
                    hint.style.display = 'none';
                    if (isok) {
                        ajax({
                            type: 'post',
                            url: 'api/01.checkname.php',
                            data: {
                                name: val,
                                type: 'checkname'
                            },
                            success: str => {

                                if (str == 'no') {
                                    alert('用户名已有，请换一个')
                                    isok1 = false;
                                } else {
                                    alert('用户名可用');
                                    isok1 = true;
                                }
                            }
                        });
                    }

                }
                else {
                    sign.style.display = 'block';
                    hint.style.display = 'block';
                }
            }
        }
    }

    function checkInput1(opt) {
        passwordSignShow.onblur = passwordSignHide.onblur = () => {
            var val = passwordSignShow.value.trim();
            var val1 = passwordSignHide.value.trim();
            if (val || val1) {
                var str = `checkReg.${opt.type}(val)`;//eval() 把字符串转成js代码
                var str1 = `checkReg.${opt.type}(val1)`;//eval() 把字符串转成js代码
                var isok = eval(str);
                var isok1 = eval(str1);;
                if (isok || isok1) {
                    //正则验证通过
                    alert('正确');
                }
                else {
                    alert('格式不正确')
                    passwordSignHide.value = '';
                    passwordSignHide.focus();

                    passwordSignShow.value = '';
                    passwordSignShow.focus();
                }
            }
        }
    }

    function checkInput2(opt) {
        email.onblur = () => {
            let val = email.value.trim();
            if (val) { //非空判断
                //正则验证
                let str = `checkReg.${opt.type}(val)`;//eval() 把字符串转成js代码
                let isok = eval(str);
                if (isok) {

                } else {
                    alert('格式不正确');
                    email.value = '';
                    email.focus();
                }
            }
        }
    }
    checkInput({
        type: 'phone'
    });
    checkInput1({
        type: 'password'
    });
    checkInput2({
        type: 'email'
    });

    //注册
    signSubmit.onclick = () => {
        if (isok1) {
            if (statussign.checked) {
                alert('请同意协议');
            } else {
                ajax({
                    type: 'post',
                    url: 'api/01.checkname.php',
                    data: {
                        name: phoneSign.value.trim(),
                        password: passwordSignHide.value.trim(),
                        type: 'reg'
                    },
                    success: str => {
                        console.log(str);
                        if (str == 'yes') {
                            alert('注册成功');
                            lyr.style.display = 'none';
                            lyRt.style.display = 'block';
                        } else {
                            alert('注册不成功');
                        }
                    }
                });
            }
        }
    }

    //登录
    loginBtnSubmit.onclick = () => {
        let name = phoneInline.value.trim();
        let name1 = email.value.trim();
        let password = passwordInlineHide.value.trim();
        let password1 = passwordInlineShow.value.trim();
        let user = getcookie('phoneInline');
        let user1 = getcookie('email');
        if (user || user1) {
            alert('你已经登录了');
            location.href = 'main.html';
        } else {
            //未登录
            ajax({
                type: 'post',
                url: 'api/01.checkname.php',
                data: {
                    name,
                    name1,
                    password,
                    password1,
                    type: 'denglu'
                },
                success: str => {
                    console.log(str);
                    if (str == 'no') {
                        //可登录
                        alert('登录成功!')
                        //两周免登录
                        if (statusInline.checked) {
                            setcookie('phoneInline', name, 14);
                            setcookie('email', name1, 14);
                            let url = getcookie('url');
                            if (url) {
                                location.href = url;
                            } else {
                                location.href = 'main.html';
                            }
                        } else {
                            setcookie('phoneInline', name, 0);
                            setcookie('email', name1, 0);
                            let url = getcookie('url');
                            if (url) {
                                location.href = url;
                            } else {
                                location.href = 'main.html';
                            }
                        }
                    }
                }
            });
        }
    }
})();