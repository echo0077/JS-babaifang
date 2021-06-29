<?php

    include 'conn.php';

    $str1 = isset($_REQUEST['str1']) ? $_REQUEST['str1'] : '13';
    //语句
    $sql = "SELECT * FROM list WHERE gid=$str1";
    //执行语句
    $res = $conn->query($sql);
    //
    $arr = $res->fetch_all(MYSQLI_ASSOC);

    echo json_encode($arr);

    //关闭数据
    $res->close();
    $conn->close();
?>