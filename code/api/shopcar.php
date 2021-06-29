<?php
    include 'conn.php';

    $firstid = isset($_REQUEST['firstid']) ? $_REQUEST['firstid'] : '';
    $i = isset($_REQUEST['i']) ? $_REQUEST['i'] : '';
    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $title = isset($_REQUEST['title']) ? $_REQUEST['title'] : '';
    $price = isset($_REQUEST['price']) ? $_REQUEST['price'] : '';
    $priceall = isset($_REQUEST['priceall']) ? $_REQUEST['priceall'] : '';
    $img = isset($_REQUEST['img']) ? $_REQUEST['img'] : '';
    $kucun = isset($_REQUEST['kucun']) ? $_REQUEST['kucun'] : '';
    $aliang = isset($_REQUEST['aliang']) ? $_REQUEST['aliang'] : '';
    $bur = isset($_REQUEST['bur']) ? $_REQUEST['bur'] : '';
    $typedata = isset($_REQUEST['typedata']) ? $_REQUEST['typedata'] : '';

    //sql语句
    if($typedata=='setdata'){
        //1.写语句
        $sql = "INSERT INTO dingdan(username,gid,shuliang,title,price,priceall,checked,img,kucun) VALUES('$name',$firstid,$i,'$title',$price,$priceall,'$bur','$img',$kucun)"; 
        //2.执行语句
        $res = $conn->query($sql);
        //3.判断执行成功与否
        if($res) {
            //插入成功
            echo 'yes';
        }else{
            echo 'no';
        }
    }else if($typedata == 'getdata'){//获取多个数据
        //1.写语句
        $sql = "SELECT * FROM dingdan WHERE username = '$name'"; 
        $sql2 = "update dingdan set checked='$bur' where username='$name'";
        //2.执行语句
        $res = $conn->query($sql);
        $res2 = $conn->query($sql2);
        //3.提取数据
        $arr = $res->fetch_all(MYSQLI_ASSOC);
        //4.将数据传到前端
        echo json_encode($arr);
    }else if($typedata == 'deldata'){
        //1.写语句
        $sql = "DELETE FROM dingdan WHERE gid=$firstid and username='$name'"; 
        //2.执行语句
        $res = $conn->query($sql);
        //3.判断执行成功与否
        if($res) {
            //插入成功
            echo 'yes';
        }else{
            echo 'no';
        }
    }else if($typedata == 'alldeldata'){
        //1.写语句
        $sql = "DELETE FROM dingdan WHERE checked='$bur' and username='$name'"; 
        //2.执行语句
        $res = $conn->query($sql);
        //3.判断执行成功与否
        if($res) {
            //插入成功
            echo 'yes';
        }else{
            echo 'no';
        }
    }else if($typedata == 'getadata'){//获取一个数据
        //1.写语句
        $sql = "SELECT * FROM dingdan WHERE gid=$firstid and username='$name'"; 
        //2.执行语句
        $res = $conn->query($sql);
        //3.提取数据
        $arr = $res->fetch_all(MYSQLI_ASSOC);
        //4.将数据传到前端
        echo json_encode($arr);
    }else if($typedata == 'updata'){
        //1.写语句
        $sql = "update dingdan set shuliang=$aliang where gid=$firstid AND username='$name'"; 
        $sql2 = "update dingdan set priceall=$priceall where gid=$firstid AND username='$name'"; 
        //2.执行语句
        $res = $conn->query($sql);
        $res2 = $conn->query($sql2);
        //3.判断执行成功与否
        if($res2) {
            //插入成功
            echo 'yes';
        }else{
            echo 'no';
        }
    }else if($typedata == 'upcheck'){
        //1.写语句
        $sql = "update dingdan set checked='$bur' where gid=$firstid AND username='$name'"; 
        //2.执行语句
        $res = $conn->query($sql);
        //3.判断执行成功与否
        if($res) {
            //插入成功
            echo 'yes';
        }else{
            echo 'no';
        }
    }else if($typedata == 'upallcheck'){
        //1.写语句
        $sql = "update dingdan set checked='$bur' where username='$name'"; 
        //2.执行语句
        $res = $conn->query($sql);
        //3.判断执行成功与否
        if($res) {
            //插入成功
            echo 'yes';
        }else{
            echo 'no';
        }
    }

    

    /*
        select : 返回结果集
        insert、update、delete：返回布尔值
    */

    //关闭数据库
    // $res->close();
    // $conn->close();
?>