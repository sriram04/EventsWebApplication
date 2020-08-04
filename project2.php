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
$sql = "INSERT INTO createacc (aadhar, address, age, blood, confirm, fullname, gender, mail, mobile, nationality, pass, pincode, username) VALUES(".$_POST['adnum'].", '".$_POST['personaladdress']."', ".$_POST['age'].", '".$_POST['blood']."', '".$_POST['con']."', '".$_POST['text']."', '".$_POST['sex']."', '".$_POST['mail']."', ".$_POST['mobileno'].", '".$_POST['nan']."', '".$_POST['pass']."', ".$_POST['pincode'].", '".$_POST['text1']."')";

if (mysqli_query($conn, $sql)) {
    echo "You have successfully created your account!!!";
    echo "<p><a href='login--css.html'>Login Here</a></p>";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?> 
