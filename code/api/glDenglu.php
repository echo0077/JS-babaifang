<?php
    include 'conn.php';

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';

    $sql = "SELECT * FROM matrixtb WHERE matrixname= '$name' AND paw= '$password'";

        //执行语句
        $res = $conn->query($sql);
        
        // var_dump($res);
        //判断是否可以通过查询
        if($res->num_rows){
               //不能
            echo 1;
        }else{
               //能
            echo -1;
        }

?>