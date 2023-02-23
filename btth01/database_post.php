<?php
require_once './database_connection.php';

function getAllPost()
{
    $conn = $GLOBALS['conn'];
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

// $myList = getAllPost();
// if ($myList->num_rows > 0) {
//     while ($row = $myList->fetch_assoc()) {
//         echo "id: " . $row["ma_bviet"] . "<br>";
//     }
// }
