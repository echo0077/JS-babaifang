<?php
    include 'conn.php';

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $content = isset($_REQUEST['content']) ? $_REQUEST['content'] : '';
    $type = isset($_REQUEST['type']) ? $_REQUEST['type'] : '';
    $oppose = isset($_REQUEST['oppose']) ? $_REQUEST['oppose'] : '';
    $support = isset($_REQUEST['support']) ? $_REQUEST['support'] : '';
    $cid = isset($_REQUEST['cid']) ? $_REQUEST['cid'] : '';
    $gid = isset($_REQUEST['gid']) ? $_REQUEST['gid'] : '';


    //留言

    if($type == 'pull'){

        $sql = "INSERT INTO content(username,contents,support,oppose,gid) VALUES('$name','$content',0,0,$gid);";
        $sql2 = "SELECT * FROM content";

        $res = $conn->query($sql);

        $res2 = $conn->query($sql2);

        $arr = $res2->fetch_all(MYSQLI_ASSOC);

        echo json_encode($arr);
    }
    else if($type == 'getdata'){

        $sql2 = "SELECT * FROM content where gid=$gid order by cid desc";

        $res2 = $conn->query($sql2);

        $arr = $res2->fetch_all(MYSQLI_ASSOC);

        echo json_encode($arr);
    }

    else if( $type == 'updata'){

        $sql = "UPDATE content SET oppose='$oppose' WHERE cid='$cid' ";
        $sql2 = "SELECT * FROM content";

        $res = $conn->query($sql);
        $res2 = $conn->query($sql2);

        $arr = $res2->fetch_all(MYSQLI_ASSOC);

        echo json_encode($arr);
    }
    else if( $type == 'updatap'){

        $sql = "UPDATE content SET support='$support' WHERE cid='$cid' ";
        $sql2 = "SELECT * FROM content";

        $res = $conn->query($sql);
        $res2 = $conn->query($sql2);

        $arr = $res2->fetch_all(MYSQLI_ASSOC);

        echo json_encode($arr);
    }
            

        //关闭数据
        $res2->close();
        $conn->close();
?>
