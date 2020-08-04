<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dots";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$category=$_POST['cate'];
$sql = "INSERT INTO events (id,name,category,description,dateandtime,location) VALUES('','".$_POST['name']."', '".$category."','".$_POST['descr']."','".$_POST['datime']."','".$_POST['loc']."');";

if (mysqli_query($conn, $sql)) {
    echo "You have successfully added the event!!!";
    echo "<p><a href='view.php'>View Here</a></p>";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?> 
