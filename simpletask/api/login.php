<?php 
    header("Access-Control-Allow-Origin: *");
    session_start();
    $uname = htmlspecialchars($_POST["username"]);
    $pwd = htmlspecialchars($_POST["password"]);
    $_SESSION["username"] = $uname;
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "simpletask";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT COUNT(*) as cnt FROM api_users WHERE api_users.username ='".$uname."' AND api_users.pwd = '".$pwd."';";
    $result = $conn->query($sql);
    while($row = $result->fetch_assoc()) {
        if($row["cnt"] > 0){
            echo "success";
            $conn->close();
            exit;
        }
    }

    echo 'failed';   
    $conn->close();
?>