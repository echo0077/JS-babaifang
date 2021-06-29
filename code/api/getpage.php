<?php
    include 'conn.php';

    $page = isset($_REQUEST['ipage']) ? $_REQUEST['ipage'] : '';
    $num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '';
    $paixu = isset($_REQUEST['paixu']) ? $_REQUEST['paixu'] : '';
    $search = isset($_REQUEST['val']) ? $_REQUEST['val'] : '';
    $jiage = isset($_REQUEST['jiage']) ? $_REQUEST['jiage'] : '';

    //查询语句
    $index = ($page - 1) * $num;

    if($paixu){
        $sql = "SELECT * FROM list ORDER BY xiaoliang $paixu LIMIT $index,$num";
        $sql2 = "SELECT * FROM list ORDER BY xiaoliang $paixu";

    }else if($search){
        $sql = "SELECT * FROM list WHERE title  LIKE '%$search%' LIMIT $index,$num";
        $sql2 = "SELECT * FROM list WHERE title  LIKE '%$search%'";

    }else if($jiage){
        $sql = "SELECT * FROM list ORDER BY price $jiage LIMIT $index,$num";
        $sql2 = "SELECT * FROM list ORDER BY price $jiage";
    }
    else{
        $sql = "SELECT * FROM list LIMIT $index,$num";
        
        $sql2 = "SELECT * FROM list";
    }


    $res = $conn->query($sql);

    $arr = $res->fetch_all(MYSQLI_ASSOC);

    
    $res2 = $conn->query($sql2);

    $data = array(
        'total' => $res2->num_rows,
        'list' => $arr,
        'page' => $page,
        'num' => $num
    );

    echo json_encode($data);

    //关闭数据
    $res->close();
    $conn->close();
?>