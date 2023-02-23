<?php

function logError(Exception $e) {
    echo "Message: " . $e->getMessage();
    echo "<br>Exception code: " . $e->getCode();
    echo "<br>Error message: " . $e->__toString();
}