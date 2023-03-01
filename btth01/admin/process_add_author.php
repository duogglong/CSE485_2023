<?php
        include 'config.php';
        $txtTenTacGia = $_POST['txtTenTacGia'];
        try{               
                $sql="INSERT INTO tacgia(ten_tgia) VALUES ('$txtTenTacGia')";
                $conn->exec($sql);
                header('Location:author.php');
        }
        catch(PDOException $e){
         echo $e->getMessage();
        }      
?>
