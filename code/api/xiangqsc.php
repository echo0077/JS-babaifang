<?php

    include 'conn.php';

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    //语句
    $sql = "SELECT * FROM dingdan WHERE username=$name";
    //执行语句
    $res = $conn->query($sql);
    //
    $arr = $res->fetch_all(MYSQLI_ASSOC);

    echo json_encode($arr);

    //关闭数据
    $res->close();
    $conn->close();
?>