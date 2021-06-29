(function () {

    let topLogin = document.querySelector('.top-login');
    let welcomeBox = document.querySelector('.welcome-box');
    let topMemberDenglu = document.querySelector('.top-member-denglu');
    let welcomeTxt = document.querySelector('.welcome-txt');
    let loginAccountExit = document.querySelector('.login-account-exit');
    // console.log(loginAccountExit);



    function undate() {
        let data = getcookie('phoneInline');
        let data1 = getcookie('email');
        if (data || data1) {
            topMemberDenglu.style.display = 'block';
            welcomeBox.style.display = 'none';
            if (data) {
                topLogin.innerHTML = `<em>
                                            <i class="i-icon icon-level icon-level-one"></i>您好，
                                        </em>
                                        <a href="###" class="top-account">${data}</a>
                                        <i class="i-icon icon-tri"></i>`;

            } else {
                topLogin.innerHTML = `<em>
                                            <i class="i-icon icon-level icon-level-one"></i>您好，
                                        </em>
                                        <a href="###" class="top-account">${data1}</a>
                                        <i class="i-icon icon-tri"></i>`;
            }

        }
        else {
            welcomeBox.style.display = 'block';
            topMemberDenglu.style.display = 'none';
        }
    }
    undate();

    loginAccountExit.onclick = function () {

        alert('退出成功');
        removeCookie('email');
        removeCookie('phoneInline');
        // removeCookie('url');
        location.href = 'denglu.html';
        undate();
    }

    let welcomeLogin = document.querySelector('.welcome-login');
    let welcomeRegister = document.querySelector('.welcome-register');

    //点击跳转到注册页
    welcomeRegister.onclick = function () {
        location.href = 'zhuce.html';
    }

    //点击跳转到登录页
    welcomeLogin.onclick = function () {
        location.href = 'denglu.html';
    }

})();