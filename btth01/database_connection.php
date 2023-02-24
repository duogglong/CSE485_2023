<?php
require_once './common_base_path.php';

// $servername = "localhost";
// $username = "root";
// $password = "123456";
// $dbname = 'btth01_cse485';

// $conn = mysqli_connect($servername, $username, $password, $dbname);

function getConn()
{
    $servername = "localhost";
    $username = "root";
    $password = "123456";
    $dbname = 'btth01_cse485';
    return mysqli_connect($servername, $username, $password, $dbname);
}
