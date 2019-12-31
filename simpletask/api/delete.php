<?php 
    header("Access-Control-Allow-Origin: *");
    //header("Access-Control-Allow-Methods", "DELETE");
    session_start();
    if(session_destroy())
        echo 'success';
    else
        echo 'failed';
    
?>