(function () {
    let mainLeft = document.querySelector('.main_left');
    let allSort = document.querySelector('.all-sort');
    let sortlist = document.querySelector('.sort-list');
    let name = getcookie('phoneInline');

    allSort.onmouseover = sortlist.onmouseover = function () {
        sortlist.style.display = 'block';
    }

    allSort.onmouseout = sortlist.onmouseout = function () {
        sortlist.style.display = 'none';
    }

    let zhengpinbaozheng = document.querySelector('.zhengpinbaozheng');
    let zhonghuabaoxian = document.querySelector('.zhonghuabaoxian');
    let xiangDl = document.querySelector('.xiangDl');
    let xiangZc = document.querySelector('.xiangZc');
    let tab = document.querySelector('.tab');
    let botex = document.querySelector('.bot_ex');
    let listNavs = tab.querySelectorAll('li');
    let botItems = botex.querySelectorAll('.bot-item');


    //选项卡点击
    for (let i = 0; i < listNavs.length; i++) {
        listNavs[i].onclick = function () {
            for (let i = 0; i < listNavs.length; i++) {
                listNavs[i].className = '';
                botItems[i].style.display = 'none';
            }
            this.className = 'cur';
            botItems[i].style.display = 'block';
        }

    }

    //吸顶菜单
    let floatNav = document.querySelector('.float_nav');

    window.onload = function () {
        var iTop = floatNav.offsetTop;

        window.onscroll = function () {
            var scrolTop = window.scrollY;
            if (scrolTop >= iTop) {
                floatNav.className = 'float_nav cont';
            } else {
                floatNav.className = 'float_nav';
            }
        }

    }


    zhengpinbaozheng.onmouseover = function () {
        zhonghuabaoxian.style.display = 'block';
    }

    zhengpinbaozheng.onmouseout = function () {
        zhonghuabaoxian.style.display = 'none';
    }

    xiangDl.onclick = function () {
        window.open('denglu.html');
    }

    xiangZc.onclick = function () {
        window.open('zhuce.html');
    }


    var str1 = decodeURI(location.search.slice(1));
    console.log(str1);


    function init() {
        ajax({
            type: 'post',
            url: 'api/xiangqing.php',
            data: {
                str1
            },
            success: str => {
                var arr = JSON.parse(str);

                show(arr);
                shuRu(arr);
            }
        });
    }
    init();


    let biger = document.querySelector('.biger');
    let jqzoom = document.querySelector('.jqzoom');
    let specList = document.querySelector('.spec-list');
    let font18 = document.querySelector('.font18');
    let second = document.querySelector('.second');
    let priceBox = document.querySelector('.price-box');
    let kucunBox = document.querySelector('.kucun-box');
    let priceAll = document.querySelector('.priceAll');
    let btnrx = document.querySelector('.btn_rx');
    let yhms = document.querySelector('.yhms');
    let yhms_3 = document.querySelector('.yhms_3');
    let btn = document.querySelector('.btn');
    let xuqiua = document.querySelector('.xuqiua');


    function undate() {
        let data = getcookie('phoneInline');
        let data1 = getcookie('email');
        if (data || data1) {
            yhms_3.style.display = 'block';
            yhms.style.display = 'none';
        }
        else {
            yhms_3.style.display = 'none';
            yhms.style.display = 'block';
        }
    }
    undate();

    function show(arr) {

        //小图
        let html4 = arr.map(item => {
            var arr1 = item.imgUrl.split(',');
            let str1 = '';
            for (let i in arr1) {
                str1 += `<li class="smpic"><img src="${arr1[i]}" alt=""></li>`;
            }
            return `<ul class="mini_list">${str1}</ul>`;
        }).join('');
        specList.innerHTML = html4;

        //大图
        let html5 = arr.map(item => {
            return `<img src="${item.url}" alt="">`;
        }).join('');
        biger.innerHTML = html5;


        let html = arr.map(item => {
            return `<img id="bigimg" src="${item.url}" alt="">
                    <span class="tag"></span>
                    <div class="mask" id="mask"></div>`;
        }).join('');
        jqzoom.innerHTML = html;
        chanGe();
        console.log(jqzoom.children[2]);


        let html1 = arr.map(item => {
            return `<span class="rx" title="OTC为非处方药，RX为处方药"></span>
                    <span>${item.title}</span> `;
        }).join('');
        font18.innerHTML = html1;

        let html2 = arr.map(item => {
            return `<span class="fontGrey2">八百方价：</span>
                        <span class="price_shang font26 fontRed">
                            <em>￥</em>
                            <span>${item.price}</span>
                        </span>`;
        }).join('');
        priceBox.innerHTML = html2;

        let html3 = arr.map(item => {
            return `<span class="fontGrey2">品牌名称：</span>
                        <span class="fontGrey1 xinkang">${item.title}</span>`;
        }).join('');
        second.innerHTML = html3;

        //库存
        let html6 = arr.map(item => {
            return `<span>库存
                        <span class="STORAGE">${item.kucun}</span>
                        件
                    </span>`;
        }).join('');
        kucunBox.innerHTML = html6;

        //总价
        let html7 = arr.map(item => {
            return `总价：<span class="price_shang font26 fontRed priceAll-laji">
                        ${item.price}
                    </span>`;
        }).join('');
        priceAll.innerHTML = html7;

        //按钮
        let html8 = arr.map(item => {
            return `<p class="tip">提示：本品为处方药，需凭处方购买。</p>
                    <p class="fontBlue declare"></p>
                    <input type="button" name="提交需求" class="buy" data-id = "${item.gid}">
                    <input type="button" name="加入需求清单" class="add_cart"  data-id = "${item.gid}">`;
        }).join('');
        btnrx.innerHTML = html8;

        //需求清单按钮
        let html9 = arr.map(item => {
            return `<input type="button" value="提交需求清单" title="提交需求清单" class="shop" data-id = "${item.gid}" >
                    <a href="liebiao.html">继续购物</a>`;
        }).join('');
        btn.innerHTML = html9;

    }


    //移入遮罩出现
    jqzoom.onmouseover = function () {
        jqzoom.children[2].style.display = 'block';
        biger.style.display = 'block';
    }
    //移出遮罩消失
    jqzoom.onmouseout = function () {
        jqzoom.children[2].style.display = 'none';
        biger.style.display = 'none';
    }

    //大图跟随运动
    jqzoom.onmousemove = function (ev) {
        var iTop = ev.pageY - mainLeft.offsetTop - jqzoom.children[2].offsetHeight / 2;
        var iLeft = ev.pageX - mainLeft.offsetLeft - jqzoom.children[2].offsetWidth / 2;
        // console.log(iLeft);

        if (iTop < 0) {
            iTop = 0;
        } else if (iTop > jqzoom.offsetHeight - jqzoom.children[2].offsetHeight) {
            iTop = jqzoom.offsetHeight - jqzoom.children[2].offsetHeight;
        }
        if (iLeft < 0) {
            iLeft = 0;
        } else if (iLeft > mainLeft.offsetWidth - jqzoom.children[2].offsetWidth) {
            iLeft = mainLeft.offsetWidth - jqzoom.children[2].offsetWidth;
        }
        //比例系数
        var scalY = iTop / (jqzoom.offsetHeight - jqzoom.children[2].offsetHeight);
        var scalX = iLeft / (mainLeft.offsetWidth - jqzoom.children[2].offsetWidth);

        jqzoom.children[2].style.top = iTop + 'px';
        jqzoom.children[2].style.left = iLeft + 'px';

        biger.children[0].style.top = scalY * (biger.offsetHeight - biger.children[0].offsetHeight) + 'px';
        biger.children[0].style.left = scalX * (biger.offsetWidth - biger.children[0].offsetWidth) + 'px';
    }

    //小图换大图
    function chanGe() {
        let smallpit = specList.getElementsByClassName('smpic');
        smallpit[0].className = 'smpic active';

        for (var i = 0; i < smallpit.length; i++) {
            smallpit[i].index = i;
            smallpit[i].onmouseover = function () {
                for (var j = 0; j < smallpit.length; j++) {
                    smallpit[j].className = 'smpic';
                }
                this.className = 'smpic active';
                jqzoom.children[0].src = this.children[0].src;
                biger.children[0].src = this.children[0].src;
            }
        }
    }

    //输入框设计
    function shuRu(arr) {
        for (let item of arr) {
            //输入框设置
            var cut = document.querySelector('.icon_rec');
            var tex = document.querySelector('.num_sort');
            var add = document.querySelector('.icon_add');
            var pay = document.querySelector('.buy');
            var addPay = document.querySelector('.add_cart');
            var cartbox = document.querySelector('.cart_box');
            var closebtn = document.querySelector('.close_btn');
            var shop = document.querySelector('.shop');
            let numsort = document.querySelector('.num_sort');
            let xinkang = document.querySelector('.xinkang');
            let priceAlllaji = document.querySelector('.priceAll-laji ');
            let bigimg = document.querySelector('.bigimg ');
            let STORAGE = document.querySelector('.STORAGE ');
            let priceShang = document.querySelector('.price_shang  ');
            var num = 1;
            var num2 = item.price;// 价格
            var j = item.kucun; // 库存
            let jqzoom = document.querySelector('.jqzoom');

            //边输入边改变
            tex.oninput = function () {
                var a = tex.value - 0;
                var b = num2 * a;
                priceAll.children[0].innerHTML = b.toFixed(2);
                if (a > j) {
                    tex.value = j;
                    priceAll.children[0].innerHTML = (num2 * j).toFixed(2);
                    alert('没货了呢');
                }
                if (a < 1) {
                    tex.value = 1;
                    priceAll.children[0].innerHTML = num2;
                    alert('不能小于1哦');
                }
            }

            //减
            cut.onclick = function () {
                var val = tex.value - 0;
                num = val;
                if (num > 1) {
                    num--;
                    tex.value = num;
                    priceAll.children[0].innerHTML = (num * num2).toFixed(2);
                } else {
                    priceAll.children[0].innerHTML = num2;
                    alert('不能再少了哦');
                }
            }

            //加
            add.onclick = function () {
                var val = tex.value - 0;
                num = val;
                if (num < j) {
                    num++;
                    tex.value = num;
                    priceAll.children[0].innerHTML = (num * num2).toFixed(2);
                }
                else if (val >= j) {
                    tex.value = j;
                    priceAll.children[0].innerHTML = (j * num2).toFixed(2);
                    alert('暂时没有货了哦');
                }
            }


            addPay.onclick = function () {
                let user = getcookie('email');
                let user1 = getcookie('phoneInline');
                if (user || user1) {
                    cartbox.style.display = 'block';
                } else {
                    alert('请先登录');
                    window.open('denglu.html');
                }
            }

            closebtn.onclick = function () {
                cartbox.style.display = 'none';
            }

            //加入购物车和购买
            let typedata = '';
            shop.onclick = function () {
                let name = getcookie('phoneInline');
                let id = str1;

                if (name) {
                    ajax({
                        type: 'post',
                        url: 'api/shopcar.php',
                        data: {
                            name,
                            firstid: id,
                            i: numsort.value,
                            title: xinkang.innerHTML,
                            price: priceShang.children[1].innerHTML,
                            priceall: priceAlllaji.innerHTML,
                            img: jqzoom.children[0].src,
                            kucun: STORAGE.innerHTML,
                            bur: 'true',
                            typedata: 'setdata'
                        },
                        success: str => {
                            console.log(str);
                            // alert('添加成功');
                        }
                    });
                } else {
                    alert('请先登录');
                    window.open('denglu.html?' + id);
                }
                tex.value = 1;
                priceAll.children[0].innerHTML = num2;

            }
            pay.onclick = function () {
                let name = getcookie('phoneInline');
                let id = str1;

                if (name) {
                    ajax({
                        type: 'post',
                        url: 'api/shopcar.php',
                        data: {
                            name,
                            firstid: id,
                            i: numsort.value,
                            title: xinkang.innerHTML,
                            price: priceShang.children[1].innerHTML,
                            priceall: priceAlllaji.innerHTML,
                            img: jqzoom.children[0].src,
                            kucun: STORAGE.innerHTML,
                            bur: 'true',
                            typedata: 'setdata'
                        },
                        success: str => {
                            console.log(str);
                            alert('添加成功');
                            location.href = 'gouwuche.html?' + id;
                        }
                    });
                } else {
                    alert('请先登录');
                    window.open('denglu.html');
                }
                tex.value = 1;
                priceAll.children[0].innerHTML = num2;

            }

        }
    }


    let btnPost = document.getElementById('btnPost');
    let content = document.getElementById('content');
    let list = document.getElementById('list');


    //留言
    btnPost.onclick = () => {
        let name = getcookie('phoneInline');
        if (name) {
            if (content.value.trim()) {
                ajax({
                    type: 'post',
                    url: 'api/liuyan.php',
                    data: {
                        name,
                        content: content.value.trim(),
                        gid: str1,
                        type: 'pull'
                    },
                    success: str => {
                        init2();
                        content.value = '';
                    }
                });
            }
        } else {
            alert('请先登录');
        }

    }

    function leaveWords(data) {
        var html = data.map(function (item) {
            return `<dl>
                        <dt>
                            <strong>${item.username}</strong> 说 :
                        </dt>
                        <dd>${item.contents}<br>发布时间：${item.dateline}</dd>
                        <dd class="t" data-id=${item.cid}>
                            <a href="javascript:;" class="support">有用(<span>${item.support}</span>)</a>
                            |
                            <a href="javascript:;" class="oppose">没用(<span>${item.oppose}</span>)</a>
                        </dd>
                    </dl>`;

        }).join("");
        list.innerHTML = html;
    }

    //留言板初始化
    function init2() {
        ajax({
            type: 'get',
            url: 'api/liuyan.php',
            data: {
                gid: str1,
                type: 'getdata'
            },
            success: str => {
                let arr = JSON.parse(str);
                leaveWords(arr);
            }
        });
    }
    init2();

    //顶帖
    list.onclick = ev => {
        if (ev.target.className == 'support') {
            let support = ev.target.children[0].innerHTML;
            support++;

            ajax({
                type: 'post',
                url: 'api/liuyan.php',
                data: {
                    cid: ev.target.parentNode.dataset.id,
                    support,
                    type: 'updatap'
                },
                success: str => {
                    let arr = JSON.parse(str);
                    // console.log(arr);
                    var zhi = '';
                    arr.map(function (item) {
                        zhi = item.support;
                    });
                    if (zhi == 0) {
                        let num = ev.target.children[0].innerHTML;
                        num++;
                        ev.target.children[0].innerHTML = num;
                    }
                    init2();
                }
            });
        }
        else if (ev.target.className == 'oppose') {
            let oppose = ev.target.children[0].innerHTML;
            oppose++;
            ajax({
                type: 'post',
                url: 'api/liuyan.php',
                data: {
                    cid: ev.target.parentNode.dataset.id,
                    oppose,
                    type: 'updata'
                },
                success: str => {
                    let arr = JSON.parse(str);
                    var zhi = '';
                    arr.map(function (item) {
                        zhi = item.oppose;
                    });
                    if (zhi == 0) {
                        let num1 = ev.target.children[0].innerHTML;
                        num1++;
                        ev.target.children[0].innerHTML = num1;
                    }
                    init2();
                }
            });
        }
    }

})();