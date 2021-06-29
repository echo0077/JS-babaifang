(function () {
    let data = [{
        imgId: 'adImage0',
        title: '来领70元大礼包！',
        imgUrl: 'images/ganen.jpg',
        tex: '金秋献礼',
        mId: 1
    }, {
        imgId: 'adImage1',
        title: '满79元包邮',
        imgUrl: 'images/jia.jpg',
        tex: '家庭常备',
        mId: 2
    }, {
        imgId: 'adImage2',
        title: '领18元店铺券',
        imgUrl: 'images/jinqiu.jpg',
        tex: '礼惠金秋',
        mId: 3
    }, {
        imgId: 'adImage3',
        title: '4瓶174.8元/瓶',
        imgUrl: 'images/asses107.jpeg',
        tex: '汇仁肾宝',
        mId: 4
    }, {
        imgId: 'adImage4',
        title: '满79元包邮',
        imgUrl: 'images/asses108.jpeg',
        tex: '45元瘦身餐',
        mId: 5
    }, {
        imgId: 'adImage5',
        title: '试用无效 退款',
        imgUrl: 'images/zhen.jpg',
        tex: '颈椎枕',
        mId: 6
    }, {
        imgId: 'adImage6',
        title: '乙肝新药 免配送费',
        imgUrl: 'images/asses110.jpeg',
        tex: '韦立得',
        mId: 7
    }, {
        imgId: 'adImage7',
        title: '10片装',
        imgUrl: 'images/asses111.jpeg',
        tex: '金戈',
        mId: 8
    }, {
        imgId: 'adImage8',
        title: '虔甘宝买2送1',
        imgUrl: 'images/gan.jpg',
        tex: '护肝精品',
        mId: 9
    }
    ]

    let box = document.querySelector('#box');
    let mainCont = document.querySelector('.main-cont');
    let flexslider = document.querySelector('.flexslider');
    let flexsliderBox = box.querySelector('.flexslider-box');
    let jdAdBtn = document.querySelector('.jd_ad_btn')
    let flexPrev = flexslider.querySelector('.flexPrev');
    let flexNext = flexslider.querySelector('.flexNext');
    let flexNav = flexslider.querySelector('.flex-direction-nav');
    let mainNav = flexslider.querySelector('.main-nav');

    

    //渲染轮播图

    let html = data.map(function (item) {
        return `<a href="###" class="${item.imgId} flexsliderList" title="${item.title}">
                    <i class="content">            
                    <img src="${item.imgUrl}" alt="">
                    </i>
                </a>`;
    }).join('');
    flexsliderBox.innerHTML = html;
    flexsliderBox.children[0].style.display = 'block';

    //渲染焦点
    let html1 = data.map(item => {
        return `<a href="###" class="jd_ad_btn_a">
                    <span class="active-icon" data-id = "${item.mId}">
                        <span class="a-icon"></span>
                    </span>
                        <div class="flex-list ">
                            <span class="list-icon"></span>
                            ${item.title}
                        </div>
                    ${item.tex}
                </a>`;
    }).join('');
    jdAdBtn.innerHTML = html1;
    jdAdBtn.children[7].children[1].className = 'flex-list flex-list-bian';
    jdAdBtn.children[8].children[1].className = 'flex-list flex-list-bian';
    let as = flexsliderBox.querySelectorAll('a');

    // 开启定时器
    let timer = null;
    let now = 0;

    function next() {
        as[now].style.display = 'none';
        now++;
        if (now > as.length - 1) {
            now = 0;
        }
        as[now].style.display = 'block';
        jiaodian();
    }

    function prev() {
        console.log(666);
        as[now].style.display = 'none';
        now--;
        if (now < 0) {
            now = as.length - 1;
        }
        as[now].style.display = 'block';
        jiaodian();
    }
    timer = setInterval(next, 3000);

    let lightBtn = jdAdBtn.querySelectorAll('.active-icon');
    let jdAdBtna = jdAdBtn.querySelectorAll('.jd_ad_btn_a');
    lightBtn[0].style.display = 'block';
    jdAdBtna[0].style.backgroundColor = 'rgba(0, 0, 0, .65)';

    //焦点跟随
    function jiaodian() {
        for (let i = 0; i < as.length; i++) {
            lightBtn[i].style.display = 'none';
            jdAdBtna[i].style.backgroundColor = 'rgba(0, 0, 0, .3)';
        }
        lightBtn[now].style.display = 'block';
        jdAdBtna[now].style.backgroundColor = 'rgba(0, 0, 0, .65)';
    }

    //鼠标滑入停止轮播
    flexslider.onmouseover = function () {
        clearInterval(timer);
        flexNav.style.display = 'block';
        flexNav.style.display = 'flex';
    }
    //鼠标滑出继续轮播
    flexslider.onmouseout = function () {
        clearInterval(timer);
        timer = setInterval(next, 3000);
        flexNav.style.display = 'none';

    }

    //滑过焦点：切换到对应的图片
    for (let i = 0; i < as.length; i++) {
        jdAdBtna[i].onmouseover = function () {
            let index = lightBtn[i].dataset.id - 1;
            if (index > now) {
                as[now].style.display = 'none';
                as[index].style.display = 'block';

            } if (index < now) {
                as[now].style.display = 'none';
                as[index].style.display = 'block';
            }
            now = index;
            jiaodian();
            lightBtn[i].style.display = 'none';
        }
        jdAdBtna[i].onmouseout = function () {
            lightBtn[i].style.display = 'block';
        }
    }

    //上键控制图片
    flexPrev.onclick = function () {
        prev();
    }
    flexPrev.onmouseover = function () {
        flexPrev.style.backgroundColor = 'rgba(0, 0, 0, .7)';
    }
    flexPrev.onmouseout = function () {
        flexPrev.style.backgroundColor = 'rgba(0, 0, 0, .3)';
    }

    //下键控制图片
    flexNext.onclick = function () {
        next();
    }
    flexNext.onmouseover = function () {
        flexNext.style.backgroundColor = 'rgba(0, 0, 0, .7)';
    }
    flexNext.onmouseout = function () {
        flexNext.style.backgroundColor = 'rgba(0, 0, 0, .3)';
    }

    //选项卡
    let eiItem = mainCont.querySelectorAll('.ei-item');
    let eiBox = mainCont.querySelectorAll('.ei-box');

    for (let i = 0; i < eiItem.length; i++) {
        eiItem[i].onmouseover = function () {
            for (let i = 0; i < eiItem.length; i++) {
                eiItem[i].className = 'ei-item';
                eiBox[i].style.display = 'none';
            }
            this.className = 'ei-item cur';
            eiBox[i].style.display = 'block';
        }
    }

    let list = [
        {
            title: "复方阿胶浆 48支",
            url: "http://img.800pharm.com/images/20180723/20180723105831_825.png",
            alt: "复方阿胶浆 48支",
            name: "复方阿胶浆 48支",
            desp: "补气养血",
            price: "￥290.00",
            oldprice: "498.00",
            gid: 1
        },
        {
            title: "汇仁牌肾宝片4瓶装",
            url: "http://img.800pharm.com/images/20190312/20190312155237_116.png",
            alt: "汇仁牌肾宝片4瓶装",
            name: "汇仁牌肾宝片4瓶装",
            desp: "劵后价格174.8元/瓶",
            price: "￥689.00",
            oldprice: "1,425.60",
            gid: 2
        },
        {
            title: "万艾可 5片装 ",
            url: "http://img.800pharm.com/images/20181213/20181213113119_241.png",
            alt: "万艾可 5片装 ",
            name: "万艾可 5片装 ",
            desp: "治疗阴茎勃起功能障碍",
            price: "￥319.00",
            oldprice: "930.00",
            gid: 3
        },
        {
            title: "金戈 10片装 免配送费",
            url: "http://img.800pharm.com/images/20181213/20181213113110_50.png",
            alt: "金戈 10片装 免配送费",
            name: "金戈 10片装 免配送费",
            desp: "治疗男性勃起功能障碍",
            price: "￥148.00",
            oldprice: "340.00",
            gid: 4
        },
        {
            title: "润众*28片装",
            url: "http://img.800pharm.com/images/20190603/20190603141624_559.png",
            alt: "润众*28片装",
            name: "润众*28片装",
            desp: "乙肝一线用药",
            price: "￥91.00",
            oldprice: "480.00",
            gid: 5
        }
    ]

    let mainSellBox = box.querySelector('.main-sell-box');
    let dailyRecList = box.querySelector('.daily-rec-list');
    let mainSellList = mainSellBox.querySelector('.main-sell-list');

    let html2 = list.map(function (item) {
        return `<li class="main-sell-item" data-gid = '${item.gid}'>
                    <a href="###" title="${item.title}">
                        <img src="${item.url}" alt="${item.alt}" class="pd-img">
                        <div class="pd-wrapper">
                            <p class="pd-name">${item.name}</p>
                            <p class="pd-desp">${item.desp}</p>
                            <p class="pd-price">
                                <em>${item.price}</em>
                                <del>${item.oldprice}</del>
                            </p>
                        </div>
                    </a>
                </li>`;
    }).join('');
    mainSellList.innerHTML = html2;

    //跳到列表页
    mainSellList.onclick = function(){
        location.href = 'liebiao.html';
    }

    let html3 = list.map(function (item) {
        return `<li class="daily-sell-item" data-gid = '${item.gid}'>
                    <a href="###" title="${item.title}">
                        <img src="${item.url}" alt="" class="pd-img">
                        <div class="pd-wrapper">
                            <p class="pd-name">${item.name}</p>
                            <p class="pd-desp">${item.desp}</p>
                            <p class="pd-price">
                                <em>${item.price}</em>
                                <del>${item.oldprice}</del>
                            </p>
                        </div>
                    </a>
                </li>`;
    }).join('');
    dailyRecList.innerHTML = html3;


    let brandRecBox = box.querySelector('.brand-rec-box');
    let brandchange = brandRecBox.querySelector('.brand-change');
    let brandRecList = box.querySelector('.brand_rec_list');

    let isok = true;
    brandchange.onclick = function () {
        if (isok) {
            brandRecList.style.opacity = 0;
            brandRecList.style.display = 'none';
        } else {
            brandRecList.style.opacity = 1;
            brandRecList.style.display = 'block';
        }
        isok = !isok;
    }

    let list1 = [{
        url: "http://www.800pharm.com/shop/images/2016index/tor01.png",
        name: "黄药师",
        id: "1",
        zixun: "12,446",
        pingfen: '4.9',
        keyuan: '肝病科',
        xinIw: '70px',
        manyi: '5.0',
        huifu: '4.8',
        manyiIw: '73px',
        huifuIw: '69px'
    },
    {
        url: "http://www.800pharm.com/shop/images/2016index/tor02.png",
        name: "余药师",
        id: "2",
        zixun: "16,260",
        pingfen: ' 5.0',
        keyuan: '男科',
        xinIw: '73px',
        manyi: '5.0',
        huifu: '4.9',
        manyiIw: '73px',
        huifuIw: '70px'
    },
    {
        url: "http://www.800pharm.com/shop/images/2016index/tor03.png",
        name: "卓药师",
        id: "3",
        zixun: "15,185",
        pingfen: '4.8',
        keyuan: '心脑血管科',
        xinIw: '69px',
        manyi: '4.9',
        huifu: '4.8',
        manyiIw: '70px',
        huifuIw: '69px'
    },
    {
        url: "http://www.800pharm.com/shop/images/2016index/tor04.png",
        name: "张药师",
        id: "4",
        zixun: "13,553",
        pingfen: '4.8',
        keyuan: '肿瘤科',
        xinIw: '69px',
        manyi: '4.8',
        huifu: '4.8',
        manyiIw: '69px',
        huifuIw: '69px'
    },
    {
        url: "http://www.800pharm.com/shop/images/2016index/tor05.png",
        name: "黄药师",
        id: "5",
        zixun: "19,382",
        pingfen: '5.0',
        keyuan: '综合科',
        xinIw: '73px',
        manyi: '5.0',
        huifu: '5.0',
        manyiIw: '73px',
        huifuIw: '73px'
    },
    {
        url: "http://www.800pharm.com/shop/images/2016index/tor06.png",
        name: "张药师",
        id: "6",
        zixun: "17,015",
        pingfen: '4.7',
        keyuan: '综合科',
        xinIw: '67px',
        manyi: '4.8',
        huifu: '4.7',
        manyiIw: '69px',
        huifuIw: '67px'
    }]

    let docConsultList = box.querySelector('.doc-consult-list');

    let html4 = list1.map(function (item) {
        return `<li class="doc-consult-item" data-id = '${item.id}'>
                    <div class="intro-box">
                        <div class="intro-box-top">
                            <img src="${item.url}" alt="">
                            <p class="pd-name">${item.name}</p>
                            <p class="pd-star">
                                <span class="star-bg" style = "width:${item.xinIw};"></span>
                                <span class="star-num"></span>
                                ${item.pingfen}分
                            </p>
                            <p>${item.keyuan}</p>
                            <p class="pd-num">已有
                                <span class="doc_num">${item.zixun}</span>人咨询
                            </p>
                        </div>
                        <div class="intro-box-bottom">
                            <a href="###" class="consult_cli">点击咨询</a>
                        </div>
                    </div>
                    <div class="intro-hover-box">
                        <img src="images/asses32.png" alt="">
                        <p class="pd-name">添加药师为微信好友</p>
                        <p class="pd-star">满 意 度 ：
                            <span><i class="star-num" style = "width:${item.manyiIw};"></i></span>
                            ${item.manyi}分
                        </p>
                        <p class="pd-star">回复速度：
                            <span><i class="star-num" style = "width:${item.huifuIw};"></i></span>
                            ${item.huifu}分
                        </p>
                        <p class="pd-fuwu">服务时间：09:00~21:00</p>
                        <div class="intro-box-bottom">
                            <a href="###" class="consult_cli">点击咨询</a>
                        </div>
                    </div>
                </li>`;
    }).join('');
    docConsultList.innerHTML = html4;

    let vfdlink = box.querySelector('.vfdlink');
    let hdList = vfdlink.querySelectorAll('.hd li');
    let fts = vfdlink.querySelectorAll('.ft');
    hdList[0].className = 'cur';

    for (let i = 0; i < hdList.length; i++) {
        hdList[i].onmouseover = function () {
            for (let i = 0; i < hdList.length; i++) {
                hdList[i].className = '';
                fts[i].style.display = 'none';
            }
            this.className = 'cur';
            fts[i].style.display = 'block';
        }
    }

    let headTop = document.querySelector('.head-top');
    // let flexslider = document.querySelector('.flexslider');
    let fixedSearchContent = document.querySelector('.fixed-search-content');

    //搜索框出现

    let mainContentNav = document.querySelector('.main-content-nav');
    let navItemBoxs = document.querySelectorAll('.nav-item-box');
    let mainNavAs = document.querySelectorAll('.main-nav-a');
    // console.log(navItemBoxs);
    window.onscroll = function () {
        let scrolTop = window.scrollY;
        if (scrolTop >= headTop.offsetHeight + flexslider.offsetHeight) {
            fixedSearchContent.style.display = 'block';
        } else {
            fixedSearchContent.style.display = 'none';
        }
        //跳楼,滑动高亮
        if (scrolTop >= headTop.offsetHeight + flexslider.offsetHeight / 3) {
            mainContentNav.style.display = 'block';
            mainNavAs[0].className = 'main-nav-a cur';
            for (let i = 0; i < mainNavAs.length; i++) {
                if (scrolTop >= navItemBoxs[i].offsetTop) {
                    for (let i = 0; i < mainNavAs.length; i++) {
                        mainNavAs[i].className = 'main-nav-a';
                    }
                    mainNavAs[i].className = 'main-nav-a cur';
                }
            }
        } else {
            mainContentNav.style.display = 'none';
        }
    }

    //跳楼,点击跳转

    for (let i = 0; i < mainNavAs.length; i++) {
        mainNavAs[i].index = i;
        mainNavAs[i].onclick = function () {
            for (let i = 0; i < mainNavAs.length; i++) {
                mainNavAs[i].className = 'main-nav-a';
            }
            this.className = 'main-nav-a cur';
            let yiping = navItemBoxs[i].offsetHeight * this.index + headTop.offsetHeight + flexslider.offsetHeight;
            window.scrollTo(0, yiping);
        }
    }



})();