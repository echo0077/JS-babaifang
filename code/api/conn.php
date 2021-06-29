<?php

    $servername = 'localhost';//主机
    $username = 'root';//登陆数据库用户名
    $password = 'root';
    $dbname = 'userstb';

    $conn = new mysqli($servername,$username,$password,$dbname);

    if($conn->connect_error){
        die("连接失败: " . $conn->connect_error);
    }else{
    // echo '连接成功';    
    }
?>