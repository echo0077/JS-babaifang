(function () {
    let allSort = document.querySelector('.all-sort');
    let sortlist = document.querySelector('.sort-list');

    allSort.onmouseover = sortlist.onmouseover = function () {
        sortlist.style.display = 'block';
    }

    allSort.onmouseout = sortlist.onmouseout = function () {
        sortlist.style.display = 'none';
    }


    //渲染数据
    let searchResultList = document.querySelector('.search_result-list ');
    let yeshu = document.querySelector('.yeshu');
    let selpage = document.querySelector('.selpage');
    let one = document.querySelector('.one');
    let hou = document.querySelector('.hou');
    let nextbtn = document.querySelector('.nextbtn');
    let prevbtn = document.querySelector('.prevbtn');
    let listHide = document.querySelector('.listHide');
    let listShow = document.querySelector('.listShowa');
    let gao = document.querySelector('.gao');
    let di = document.querySelector('.di');
    let btn = document.querySelector('.btn');
    let tex1 = document.querySelector('.tex1');
    let tex2 = document.querySelector('.tex2');
    let search = document.querySelector('.search');
    let name = getcookie('phoneInline');
    let typedata = '';


    let ipage = 1;
    let num = 20;
    let paixu = '';
    let val = '';
    let val1 = '-1';
    let val2 = '-1';
    let jiage = '';

    //线路1
    function init() {
        ajax({
            type: 'get',
            url: 'api/getpage.php',
            data: {
                ipage,
                num,
                paixu,
                val,
                jiage
            },
            success: str => {
                let arr = JSON.parse(str);
                creat(arr);

            }
        });

        function creat(arr) {
            let html = arr.list.map(item => {
                return `<div class="mod" data-id= "${item.gid}">
                            <dl class="b_prod">
                                <dt class="pic">
                                    <a href="###" title="${item.title}">
                                        <img src="${item.url}" alt="">
                                    </a>
                                    <div class="tag"></div>
                                </dt>
                                <dd class="b_info">
                                    <p class="tit">
                                        <a href="###" title="${item.url}">
                                            <i class="rx"></i>${item.title}
                                            <span class="madeIn">${item.shopName}</span>
                                        </a>
                                    </p>
                                    <p class="gnzz" title="${item.title1}">
                                    ${item.tex}</p>
                                    <p class="c_name">通用名称：
                                        <a href="###">${item.title}</a>
                                    </p>
                                </dd>
                            </dl>
                            <span class="pdPrice"><b>￥</b><span>${item.price}</span></span>
                            <a href="###" class="goNextBtn">查看商品详情></a>
                        </div>`;
            }).join('');
            searchResultList.innerHTML = html;
            footerYin();

            //计算总页码
            let sum = Math.ceil(arr.total / num);
            let aStr = '';
            let aStr1 = '';
            function yema() {
                for (let i = 0; i < sum; i++) {
                    aStr += `<i>${i + 1}</i>`;
                    aStr1 += `<option value="${i + 1}">${i + 1}</option>`;
                }
                yeshu.innerHTML = aStr;
                selpage.innerHTML = aStr1;
                yeshu.children[ipage - 1].className = 'current';
            } yema();

            //上键控制跳转
            prevbtn.onclick = () => {
                if (ipage == 1) {
                    ipage = 1;
                } else {
                    let yuan = prevbtn.nextElementSibling.children[ipage - 1].innerHTML;
                    ipage--;
                    ipage = --yuan;
                    init();
                }
            }

            //下键控制跳转
            nextbtn.onclick = () => {
                if (ipage >= sum) {
                    ipage = sum - 1;
                } else {
                    let yuan = nextbtn.previousElementSibling.children[ipage - 1].innerHTML;
                    ipage++;
                    ipage = ++yuan;
                    init();
                }
            }

            //点击跳转
            yeshu.onclick = ev => {
                if (ev.target.tagName == 'I') {
                    ipage = ev.target.innerHTML;
                    index = ev.target.innerHTML;

                    init();
                }
            }

            //跳转到首页
            one.onclick = function () {
                ipage = 1;
                init();
            }

            //跳转到尾页
            hou.onclick = () => {
                ipage = sum;
                init();
            }

            let options = document.querySelectorAll('option');
            for (let i = 0; i < options.length; i++) {
                options[i].onclick = () => {
                    console.log(this);

                }
            }

        }

        //默认排序
        listHide.onclick = function () {
            listHide.className = 'listHide red';
            listShow.className = 'listShowa';
            ipage = 1;
            paixu = 'asc';
            init();
        }

        //销量排序
        listShow.onclick = function () {
            listHide.className = 'listHide';
            listShow.className = 'listShowa red';
            ipage = 1;
            paixu = 'desc';
            jiage = '';
            init();
        }


        //点击跳转带id并有足迹
        function footerYin() {

            searchResultList.onclick = function (ev) {
                if (ev.target.className == 'mod') {
                    
                    let title = ev.target.children[0].children[0].children[0].title;
                    let img = ev.target.children[0].children[0].children[0].children[0].src;
                    let price = ev.target.children[1].children[1].innerHTML;
                    let gid = ev.target.dataset.id;

                    if (name) {
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
                        location.href = 'xiangqing.html?' + gid;
                    }else{
                        location.href = 'xiangqing.html?' + gid;
                    }
                }
            }
        }
        

        //无登录足迹登
        function zhuji(id) {
            let goodUrl = localStorage.goodUrl;
            if (goodUrl) {
                //有足迹
                let arr1 = goodUrl.split('&');
                let index = arr1.indexOf(id);
                let str1 = '';
                if (index >= 0) {
                    arr1.splice(index, 1);
                    arr1.push(id);
                    str1 = arr1.join('&');
                } else {
                    str1 = goodUrl + '&' + id;
                }
                localStorage.goodUrl = str1;
                console.log(str1);

            } else {
                //没有足迹
                localStorage.goodUrl = id;
            }
        }

    } init();

    //价格由高到低
    gao.onclick = function () {
        ipage = 1;
        jiage = 'desc';
        paixu = '';
        init();
    }

    //价格由低到高
    di.onclick = function () {
        ipage = 1;
        jiage = 'asc';
        paixu = '';
        init();
    }

    //模糊搜索
    search.onblur = () => {
        val = search.value;
        ipage = 1;
        paixu = '';
        jiage = '';
        init();
    }

    //搜索框出现
    let headTop = document.querySelector('.head-top');
    let fixedSearchContent = document.querySelector('.fixed-search-content');
    let pos = document.querySelector('.pos');
    let bSelect = document.querySelector('.b_select');

    window.onscroll = function () {
        let scrolTop = window.scrollY;
        if (scrolTop >= headTop.offsetHeight + pos.offsetHeight + bSelect.offsetHeight) {
            fixedSearchContent.style.display = 'block';
        } else {
            fixedSearchContent.style.display = 'none';
        }
    }

    //跳到首页
    let mainTiao = document.querySelector('.main-tiao');
    mainTiao.onclick = function () {
        // window.open('main.html');
        location.href = 'main.html';
    }

})();