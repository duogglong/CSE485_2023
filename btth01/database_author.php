<?php
require_once './database_connection.php';

function getAuthorByCode($code)
{
    $conn = getConn();
    try {
        $sql = "SELECT t.* 
        FROM tacgia t 
        JOIN baiviet_tacgia bt ON bt.ma_bviet = t.ma_tgia 
        WHERE bt.ma_bviet = " . $code;
        return $conn->query($sql);
    } catch (Exception $e) {
        logError($e);
    } finally {
        $conn->close();
    }
}
