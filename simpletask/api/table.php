<?php 
    header("Access-Control-Allow-Origin: *");
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

    $sql = "SELECT * FROM students";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        $output = [];
        while($row = $result->fetch_assoc()) {
            $tmp = array();
            $tmp['name'] = $row["name"];
            $tmp['data1'] = $row["identity"];
            $tmp['other'] = '...';
            $tmp['data2'] = 'Default group';
            $output[] = $tmp;
            // echo json_encode($result->fetch_assoc());
            //echo "{name: '" . $row["name"]. "',other:'...',data1:'" . $row["identity"]. "',data2:'Default group'},";
        }
        echo json_encode($output);
    } else {
        echo "0 results";
    }
    $conn->close();
?>