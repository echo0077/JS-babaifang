(function () {
    let cartForm = document.querySelector('.cart_form');
    let cartdrawer = document.querySelector('.cart-drawer');
    let sidebarCart = document.querySelector('.sidebar-cart');
    let total = document.querySelector('.total');
    let typedata = '';
    let name = getcookie('phoneInline');

    cartdrawer.style.display = 'none';
    sidebarCart.style.display = 'none';

    //渲染数据

    var str1 = decodeURI(location.search.slice(1));


    function init() {
        if (name) {
            ajax({
                type: 'post',
                url: 'api/shopcar.php',
                data: {
                    bur: 'true',
                    name,
                    typedata: 'getdata'
                },
                success: str => {
                    var arr = JSON.parse(str);
                    show(arr);
                }
            });
        }
    }
    init();

    function show(arr) {
        let html = arr.map(item => {
            return `<table class="cart_list" data-id ="${item.gid}">
                        <tbody>
                            <tr data-id="tr_14013170">
                                <td width='20' style="text-align: left; padding-left: 10px; border: 0px;">
                                    <input type="checkbox" class="dancheck" checked="true" data-id ="${item.gid}">
                                </td>
                                <td width='375'>
                                    <div class="b_pord">
                                        <p class="pic">
                                            <img src="${item.img}" alt="">
                                        </p>
                                        <p class="pord_n">
                                            <a href="###">${item.title}</a>
                                        </p>
                                    </div>
                                </td>
                                <td width='180' style="border: 0px;">
                                    <div class="b_price">
                                        <p class="m_price">
                                            市场价：<del>￥498.00</del>
                                        </p>
                                        <p class="m_price">
                                            会员价：<span class="price">￥<span>${item.price}</span></span>
                                        </p>
                                    </div>
                                </td>
                                <td width='163' style="border: 0px;">
                                    <p class="pref"></p>
                                </td>
                                <td width='88' style="border: 0px;" class="jisuan">
                                    <div class="mo_num">
                                        <input type="button" value="-" id="cut" data-id ="${item.gid}">
                                        <input type="text" id="tex" value="${item.shuliang}" data-id ="${item.gid}">
                                        <input type="button" value="+" id="add" data-id ="${item.gid}">
                                    </div>
                                    <span class="testKucun">库存<span>${item.kucun}</span>件</span>
                                </td>
                                <td width='88' style="border: 0px;">
                                    <p class="s_total">
                                        ￥<span class="st">${item.priceall}</span>
                                    </p>
                                </td>
                                <td width='110' style="border: 0px;" >
                                    <span class="opt">关注</span>
                                    <span class="shan" data-id ="${item.gid}">删除</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>`;
        }).join('');
        cartForm.innerHTML = html;
        caozuo();
        xaunze();
        dianji();
        lastmokuai();


        for (var i in arr) {
            let html1 = `商品原总价（不含运费）：
                        <span class="t_price">￥<span>${arr[i].priceall}</span> </span>`;
            total.innerHTML = html1;
            totalBuy();
        }
    }

    //选中删除

    function dianji() {
        let shan = cartForm.querySelectorAll('.shan');

        for (let i = 0; i < shan.length; i++) {

            shan[i].onclick = function () {
                let firstid = this.dataset.id;
                var now = shan[i].parentNode.parentNode.parentNode.parentNode;

                var set = confirm('真的删嘛');
                if (set) {
                    ajax({
                        type: 'post',
                        url: 'api/shopcar.php',
                        data: {
                            firstid,
                            name,
                            typedata: 'deldata'
                        },
                        success: str => {
                            // console.log(str);
                        }
                    });
                    cartForm.removeChild(now);
                }
                totalBuy();
                lastmokuai();
            }
        }
    }

    //操作
    function caozuo() {
        var goodsTex = cartForm.querySelectorAll('#tex');
        var goodsCut = cartForm.querySelectorAll('#cut');
        var goodsAdd = cartForm.querySelectorAll('#add');
        var st = cartForm.querySelectorAll('.st');
        var testKucun = cartForm.querySelectorAll('.testKucun');
        var priceBox = cartForm.querySelectorAll('.price');
        var dancheck = cartForm.querySelectorAll('.dancheck');

        //加减

        for (var i = 0; i < goodsAdd.length; i++) {
            //绑定索引
            goodsAdd[i].index = i;
            goodsCut[i].index = i;
            goodsTex[i].index = i;
            dancheck[i].index = i;

            for (let i = 0; i < testKucun.length; i++) {
                //加
                let price = priceBox[i].children[0].innerHTML;
                goodsAdd[i].onclick = function () {
                    let kucun = testKucun[i].children[0].innerHTML * 1;
                    var num = goodsTex[this.index].value;
                    num++;
                    let firstid = this.dataset.id;
                    if (name) {
                        if (num <= kucun) {
                            ajax({
                                type: 'post',
                                url: 'api/shopcar.php',
                                data: {
                                    aliang: num,
                                    firstid,
                                    name,
                                    priceall: num * price,
                                    typedata: 'updata'
                                },
                                success: str => {
                                    // console.log(str);
                                    init();

                                }
                            });
                        }
                    }

                }

                //减
                goodsCut[i].onclick = function () {
                    var num = goodsTex[this.index].value;
                    num--;

                    let firstid = this.dataset.id;
                    if (name) {
                        if (num > 0) {
                            ajax({
                                type: 'post',
                                url: 'api/shopcar.php',
                                data: {
                                    aliang: num,
                                    firstid,
                                    name,
                                    priceall: num * price,
                                    typedata: 'updata'
                                },
                                success: str => {
                                    init();
                                }
                            });
                        }
                    }
                }

                //手动输入
                goodsTex[i].onblur = function () {
                    var num = goodsTex[this.index].value;
                    let kucun = testKucun[i].children[0].innerHTML * 1;
                    let firstid = this.dataset.id;
                    if (name) {

                        if (num > 0 && num <= kucun) {
                            ajax({
                                type: 'post',
                                url: 'api/shopcar.php',
                                data: {
                                    aliang: num,
                                    firstid,
                                    name,
                                    priceall: num * price,
                                    typedata: 'updata'
                                },
                                success: str => {

                                    init();
                                }
                            });
                        } else if (num <= 0) {
                            goodsTex[this.index].value = 1;
                        } else if (num > kucun) {
                            goodsTex[this.index].value = kucun;
                        }
                    }
                }

            }

            //点击选择商品
            dancheck[i].onclick = function () {
                let firstid = this.dataset.id;
                // console.log(firstid);

                if (dancheck[this.index].checked) {
                    if (name) {
                        ajax({
                            type: 'post',
                            url: 'api/shopcar.php',
                            data: {
                                name,
                                firstid,
                                bur: 'true',
                                typedata: 'upcheck'
                            },
                            success: str => {
                                // console.log(str);

                            }
                        });
                    }

                } else {
                    if (name) {
                        ajax({
                            type: 'post',
                            url: 'api/shopcar.php',
                            data: {
                                name,
                                firstid,
                                bur: 'false',
                                typedata: 'upcheck'
                            },
                            success: str => {
                                // console.log(str);
                            }
                        });
                    }
                }
                totalBuy();
            }

        }

    }

    function xaunze() {
        let dancheck = cartForm.querySelectorAll('.dancheck');
        let onecheck = document.querySelector('.onecheck');
        let lastcheck = document.querySelector('.lastcheck');

        //全选
        onecheck.onclick = function () {
            if (this.checked) {
                if (name) {
                    ajax({
                        type: 'post',
                        url: 'api/shopcar.php',
                        data: {
                            name,
                            bur: 'true',
                            typedata: 'upallcheck'
                        },
                        success: str => {
                            console.log(str);
                        }
                    });
                }
            } else {
                if (name) {
                    ajax({
                        type: 'post',
                        url: 'api/shopcar.php',
                        data: {
                            name,
                            bur: 'false',
                            typedata: 'upallcheck'
                        },
                        success: str => {
                            console.log(str);
                        }
                    });
                }
            }

            for (var i = 0; i < dancheck.length; i++) {
                dancheck[i].checked = onecheck.checked;
            }
            totalBuy();
            init();
        }
        lastcheck.onclick = function () {
            if (this.checked) {
                if (name) {
                    ajax({
                        type: 'post',
                        url: 'api/shopcar.php',
                        data: {
                            name,
                            bur: 'true',
                            typedata: 'upallcheck'
                        },
                        success: str => {
                            console.log(str);
                        }
                    });
                }
            } else {
                if (name) {
                    ajax({
                        type: 'post',
                        url: 'api/shopcar.php',
                        data: {
                            name,
                            bur: 'false',
                            typedata: 'upallcheck'
                        },
                        success: str => {
                            console.log(str);
                        }
                    });
                }
            }

            for (var i = 0; i < dancheck.length; i++) {
                dancheck[i].checked = lastcheck.checked;
            }
            totalBuy();
        }
    }

    //反全选
    function ischeck() {
        dancheck = cartForm.querySelectorAll('.dancheck');
        onecheck = document.querySelector('.onecheck');
        lastcheck = document.querySelector('.lastcheck');
        var num = 0;
        var arr = [];
        for (var i = 0; i < dancheck.length; i++) {
            if (dancheck[i].checked) {
                num++;
                arr.push(i);
            }
        }
        cartList = cartForm.querySelectorAll('.cart_list');

        if (num == dancheck.length && cartList.length != 0) {
            onecheck.checked = true;
            lastcheck.checked = true;
        } else {
            onecheck.checked = false;
            lastcheck.checked = false;
        }
        return arr;
    }

    function totalBuy() {
        var arr = ischeck();
        var sum = 0;
        var priceSum = 0;
        tPrice = document.querySelector('.t_price');
        buyBtn = document.querySelector('.buy_btn');
        goodsTex = cartForm.querySelectorAll('#tex');
        var st = cartForm.querySelectorAll('.st');

        arr.forEach(function (item) {
            sum += goodsTex[item].value * 1;
            priceSum += st[item].innerHTML * 1;
        });

        tPrice.children[0].innerHTML = priceSum.toFixed(2);

        if (arr.length) {
            buyBtn.className = 'buy_btn';
        } else {
            buyBtn.className = 'buy_btn active';
        }
    }


    //全删
    let totalChoose = document.querySelector('.total_choose');
    let m_cart = document.querySelector('.m_cart ');
    let cart_t = document.querySelector('.cart_t');
    let shopcarbg = document.querySelector('.shopcarbg');
    let btotal = document.querySelector('.b_total');

    function lastmokuai() {
        let cart_list = document.querySelector('.cart_list');

        if (cart_list) {
            shopcarbg.style.display = 'none';
        } else {
            m_cart.style.display = 'none';
            cart_t.style.display = 'none';
            btotal.style.display = 'none';
            cartForm.style.display = 'none';
            shopcarbg.style.display = 'block';
        }
    }

    totalChoose.children[2].onclick = function () {
        var arr = ischeck().reverse();
        var res = confirm('真的要删吗');
        if (res) {

            if (name) {
                ajax({
                    type: 'post',
                    url: 'api/shopcar.php',
                    data: {
                        name,
                        bur: 'true',
                        typedata: 'alldeldata'
                    },
                    success: str => {
                        lastmokuai();
                    }
                });
            }

            cartList = cartForm.querySelectorAll('.cart_list');
            let onecheck = document.querySelector('.onecheck');
            let lastcheck = document.querySelector('.lastcheck');
            arr.forEach(function (item) {

                cartForm.removeChild(cartList[item]);
                onecheck.checked = false;
                lastcheck.checked = false;
            });
            totalBuy();
        }
    }

    shopcarbg.onclick = function () {
        location.href = 'main.html';
    }

    //足迹
    let ipage = 1;
    let num = 5;
    function footerJi() {
        if (name) {
            ajax({
                type: 'post',
                url: 'api/zuji.php',
                data: {
                    name,
                    ipage,
                    num,
                    typedata: 'getdata'
                },
                success: str => {
                    var arr = JSON.parse(str);
                    myFooter(arr);

                }
            });
        }

    } footerJi();

    //渲染
    let tabcont = document.querySelector('.tab_cont');

    function myFooter(arr) {
        let arr2 = [];

        if (arr.list.length < 5) {
            for (let i = 0; i < arr.list.length; i++) {
                arr2.unshift(arr.list[i]);
            }
        } else {
            for (let i = 0; i < 5; i++) {
                arr2.push(arr.list[i]);
            }
        }

        let list = arr2.map(function (item) {
            return `<li data-id="${item.gid}">
                        <div class="prod_pic">
                            <img src="${item.img}" alt="">
                        </div>
                        <div class="prod_n">
                            <a href="###">${item.title}</a>
                        </div>
                        <div class="price">￥<span>${item.price}</span></div> /
                        <div class="mprice">￥190.00</div>
                        <div class="incart" data-id="${item.gid}">
                            <a href="###">浏览商品</a>
                        </div>
                    </li>`;
        }).join('');
        tabcont.innerHTML = list;
        lookIng();
    }

    //点击跳转到详情页并更新足迹
    function lookIng() {
        tabcont.onclick = function (ev) {
            if (ev.target.className == 'incart') {
                let gid = ev.target.dataset.id;
                let title = ev.target.parentNode.children[1].children[0].innerHTML;
                let img = ev.target.parentNode.children[0].children[0].src;
                let price = ev.target.parentNode.children[2].children[0].innerHTML;

                ajax({
                    type: 'post',
                    url: 'api/zuji.php',
                    data: {
                        name,
                        gid,
                        title,
                        price,
                        img,
                        typedata: 'setdata'
                    },
                    success: str => {
                        console.log(str);
                    }
                });
                footerJi();
                location.href = 'xiangqing.html?' + gid;
            }
        }
        
    }

})();