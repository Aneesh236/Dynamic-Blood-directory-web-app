<?php
$blood=  $_POST['blood_group'];
$servername = "localhost";
$username = "aneesh";
$password = "password";
$dbname = "blooddonor";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$bg= "SELECT id, name, age, sex, num, loc FROM registration where BLOOD= '$blood'";
$result = $conn->query($bg);
if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Name</th><th>Age</th><th>Sex</th><th>num</th><th>loc</th></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) 
  // output data of each row
  {
    echo "<tr><td>" . $row["id"]. "</td><td>" . $row["name"]. "</td><td> " . $row["age"].   "</td><td> " . $row["sex"]. "</td><td> " . $row["num"]. "</td><td>" . $row["loc"]. "</td></tr>";
  }
} else {
  echo "0 results";
}
$conn->close();
?>
