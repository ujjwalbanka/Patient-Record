<?php
include 'config.php';
$data = json_decode(file_get_contents('php://input'), true);

$firstname = $data["firstname"];
$lastname = $data["lastname"];
$age = $data["age"];
$dob = $data["dob"];
$dob = strtotime( $dob );
$dob = date ("Y-m-d", $dob);
$phone = $data["phn"];
$gender = $data["gender"];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO record (firstname, lastname, age, dob, phone, gender)
VALUES ('$firstname', '$lastname', '$age', '$dob', '$phone', '$gender')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
