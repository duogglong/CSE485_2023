<?php
require_once './database_connection.php';

function getCategoryByCode($code)
{
    $conn = getConn();
    try {
        $sql = "SELECT t.* 
        FROM theloai t 
        JOIN theloai_baiviet tb ON tb.ma_tloai = t.ma_tloai 
        WHERE tb.ma_bviet = " . $code;
        return $conn->query($sql);
    } catch (Exception $e) {
        logError($e);
    } finally {
        $conn->close();
    }
}
