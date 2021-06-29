<?php
    include 'conn.php';

    //验证用户名是否存在
    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $name1 = isset($_REQUEST['name1']) ? $_REQUEST['name1'] : '';
    $password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';
    $password1 = isset($_REQUEST['password1']) ? $_REQUEST['password1'] : '';
    $type = isset($_REQUEST['type']) ? $_REQUEST['type'] : '';

    //sql语句
    //登录
    if($type == 'checkname' || $type == 'denglu'){
        if($type == 'checkname'){
            $sql = "SELECT * FROM inf WHERE username='$name'";
        }else{
            $sql = "SELECT * FROM inf WHERE username= '$name' OR username= '$name1' AND paw= '$password' OR paw= '$password1'";
        }
        
        //执行语句
        $res = $conn->query($sql);
        
        // var_dump($res);
        //判断是否可以通过查询
        if($res->num_rows){
            //不能
            echo 'no';
        }else{
            //能
            echo 'yes';
        }
    }
    

    //注册功能
    if($type == 'reg'){
        $sql = "INSERT INTO inf(username,paw) VALUES('$name','$password')";
        $res = $conn->query($sql);
        // var_dump($res);
        if($res){
            //成功
            echo 'yes';
        }else{
            //不能
            echo 'no';
        }
    }


?>