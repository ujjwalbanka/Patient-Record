<?php
include 'config.php';
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$record=[];
$sql = "SELECT * FROM record";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {

        array_push($record,$row);
    }
    echo json_encode($record);
} else {
    echo "0 results";
}
$conn->close();
?>
