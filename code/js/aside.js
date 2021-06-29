// 侧栏按钮
let sidebarWrap = document.querySelector('.sidebar-wrap');
let sidebarCart = document.querySelector('.sidebar-cart');
let sidebarKefu = sidebarWrap.querySelector('.sidebar-kefu');
let sidebarMember = sidebarWrap.querySelector('.sidebar-member');
let cartFixedBox = document.querySelector('.cart-fixed-box');
let kefuDrawer = document.querySelector('.kefu-drawer');
let logout = document.querySelector('.logout');
let login = document.querySelector('.login');
let iconTopBox = document.querySelector('.icon-top-box');

sidebarCart.onmouseover = cartFixedBox.onmouseover = function () {
    cartFixedBox.style.right = 34 + 'px';
}
sidebarCart.onmouseout = cartFixedBox.onmouseout = function () {
    cartFixedBox.style.right = -280 + 'px';
}

sidebarKefu.onmouseover = kefuDrawer.onmouseover = function () {
    kefuDrawer.style.right = 34 + 'px';
}
sidebarKefu.onmouseout = kefuDrawer.onmouseout = function () {
    kefuDrawer.style.right = -280 + 'px';
}

sidebarMember.onmouseover = logout.onmouseover = function () {
    logout.style.right = 34 + 'px';
}
sidebarMember.onmouseout = logout.onmouseout = function () {
    logout.style.right = -280 + 'px';
}

// 回到顶部
iconTopBox.onclick = () => {
    let scrolTop = window.scrollY;
    // console.log(scrolTop);

    let timer2 = setInterval(() => {
        scrolTop -= 40;
        if (scrolTop <= 0) {
            clearInterval(timer2);
        }
        window.scrollTo(0, scrolTop);
    }, 10);
}

// 侧栏客服
let kefuPopWrap = document.querySelector('.kefu_pop_wrap');
let kefupopMid = kefuPopWrap.querySelector('.kefu_pop_mid');
let midClose = kefuPopWrap.querySelector('.mid_close');
let kefuPopSmall = kefuPopWrap.querySelector('.kefu_pop_small');
let kefuPopBig = kefuPopWrap.querySelector('.kefu_pop_big');
let bigClose = kefuPopWrap.querySelector('.big_close');

midClose.onclick = (() => {
    kefupopMid.style.opacity = 0;
    kefupopMid.style.left = 0 + 'px';
    kefupopMid.style.bottom = -48 + 'px';
    kefuPopSmall.style.opacity = 1;
});

kefuPopSmall.onclick = (() => {
    kefuPopSmall.style.opacity = 0;
    kefupopMid.style.left = 100 + 'px';
    kefupopMid.style.bottom = 10 + 'px';
    kefuPopBig.style.top = 160.5 + 'px';
    kefuPopBig.style.left = 520 + 'px';
    kefuPopBig.style.opacity = 1;
});

bigClose.onclick = (() => {
    kefuPopBig.style.opacity = 0;
    kefupopMid.style.opacity = 1;
    kefuPopBig.style.left = 100 + 'px';
    kefuPopBig.style.top = 100 + '%';
    kefupopMid.style.display = 'block';
});

//登录
let aDenglu = document.querySelector('.a-denglu');
let aZhuce = document.querySelector('.a-zhuce');
let userAccount = document.querySelector('.user-account');
// console.log(userAccount);


//点击跳转到登录页
aDenglu.onclick = function () {
    window.open('denglu.html');
}

//点击跳转到注册页
aZhuce.onclick = function () {
    window.open('zhuce.html');
}

function undate() {
    let data = getcookie('phoneInline');
    let data1 = getcookie('email');
    if (data || data1) {
        logout.style.right = -280 + 'px';
        if (data) {
            userAccount.innerHTML = `<p>您好，<a href="###" class="rightAccount">${data}</a></p>
                                <span>
                                    <em class="level">V1</em>
                                    <span class="levelName">注册会员</span>
                                </span>`;
        } else {
            userAccount.innerHTML = `<p>您好，<a href="###" class="rightAccount">${data1}</a></p>
                                <span>
                                    <em class="level">V1</em>
                                    <span class="levelName">注册会员</span>
                                </span>`;
        }

        sidebarMember.onmouseout = login.onmouseout = function () {
            login.style.right = -280 + 'px';
        }

        sidebarMember.onmouseover = login.onmouseover = function () {
            login.style.right = 34 + 'px';
        }
    }
    else {
        login.style.right = -280 + 'px';
    }
}
undate();

let data = getcookie('phoneInline');
let data1 = getcookie('email');

let cfbtitlebox = document.querySelector('.cfb-title-box');
cfbtitlebox.onclick = function(){
    if(data || data1){
        location.href = 'gouwuche.html';
    }

}
