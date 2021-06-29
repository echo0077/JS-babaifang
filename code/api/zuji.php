<?php

    include 'conn.php';

    $gid = isset($_REQUEST['gid']) ? $_REQUEST['gid'] : '';
    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $title = isset($_REQUEST['title']) ? $_REQUEST['title'] : '';
    $price = isset($_REQUEST['price']) ? $_REQUEST['price'] : '';
    $img = isset($_REQUEST['img']) ? $_REQUEST['img'] : '';
    $typedata = isset($_REQUEST['typedata']) ? $_REQUEST['typedata'] : '';
    $page = isset($_REQUEST['ipage']) ? $_REQUEST['ipage'] : '';
    $num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '';

    $index = ($page - 1) * $num;
        //sql语句
        if($typedata=='setdata'){
            $sql1 = "DELETE FROM zuji WHERE gid=$gid and username='$name'"; 
            //2.执行语句
            $res1 = $conn->query($sql1);
            //1.写语句
            $sql = "INSERT INTO zuji(username,gid,title,price,img) VALUES('$name',$gid,'$title',$price,'$img')"; 
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
            //1.写查询语句
            $sql = "SELECT * FROM zuji WHERE username = '$name'order by cid desc"; 
            $sql2 = "SELECT * FROM zuji LIMIT $index,$num";
            //2.执行语句
            $res = $conn->query($sql);
            $res2 = $conn->query($sql2);
            //3.提取数据
            $arr = $res->fetch_all(MYSQLI_ASSOC);

            $data = array(
                'list' => $arr,
                'page' => $page,
                'num' => $num
            );
            //4.将数据传到前端
            echo json_encode($data);
        }

    //关闭数据
    // $res->close();
    // $conn->close();
?>