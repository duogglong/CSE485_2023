<?php
require_once './database_connection.php';

function getAllPost()
{
    $conn = getConn();
    try {
        $sql = "SELECT * FROM baiviet";
        $listPost = $conn->query($sql);

        return $listPost;
    } catch (Exception $e) {
        logError($e);
    } finally {
        $conn->close();
    }
}

function getPostByCode($code)
{
    $conn = getConn();
    try {
        $sql = "SELECT b.* 
        FROM baiviet b 
        -- LEFT JOIN theloai_baiviet tb ON b.ma_bviet = tb.ma_bviet 
        -- LEFT JOIN theloai t ON t.ma_tloai = tb.ma_tloai
        WHERE b.ma_bviet = " . $code;
        return $conn->query($sql);
    } catch (Exception $e) {
        logError($e);
    } finally {
        $conn->close();
    }
}

// $myList = getPostByCode(5);
// if ($myList->num_rows > 0) {
//     while ($row = $myList->fetch_assoc()) {
//         echo "id: " . $row["ma_bviet"] . "<br>";
//     }
// }
