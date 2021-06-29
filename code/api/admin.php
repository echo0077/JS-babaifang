<?php
    include 'conn.php';

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';
    $paw = isset($_REQUEST['paw']) ? $_REQUEST['paw'] : '';
    $typedata = isset($_REQUEST['typedata']) ? $_REQUEST['typedata'] : '';

    //sql语句
    if($typedata=='setdata'){
        //1.写语句
        $sql = "INSERT INTO inf(username,id,paw) VALUES('$name',$id,'$paw')"; 
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
        $sql = "SELECT * FROM inf"; 
        // $sql2 = "update dingdan set checked='$bur' where username='$name'";
        //2.执行语句
        $res = $conn->query($sql);
        // $res2 = $conn->query($sql2);
        //3.提取数据
        $arr = $res->fetch_all(MYSQLI_ASSOC);
        //4.将数据传到前端
        echo json_encode($arr);

    }else if($typedata == 'deldata'){
        //1.写语句
        $sql = "DELETE FROM inf WHERE id=$id and username='$name'"; 
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

?>