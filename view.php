<!DOCTYPE html>
<html>
<head>
<title>Table with database</title>
<style>
table {
border-collapse: collapse;
width: 100%;
color: #588c7e;
font-family: sans-serif;
font-size: 25px;
text-align: left;
}
th {
background-color: #588c7e;
color: white;
}
tr:nth-child(even) {background-color: #f2f2f2}
</style>
</head>
<body>
	<h1>The List of Events are:</h1>
<table>
<tr>
<th>Id</th>
<th>Name</th>
<th>Category</th>
<th>Description</th>
<th>Date and Time</th>
<th>Location</th>
</tr>
<?php
	$conn = mysqli_connect("localhost", "root", "", "dots");
	// Check connection
	if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
	}
	$sql = "SELECT * FROM events";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
	// output data of each row
	while($row = $result->fetch_assoc()) {
	echo "<tr><td>" . $row["id"]. "</td><td>" . $row["name"] . "</td><td>" . $row["category"]. "</td><td>" . $row["description"]. "</td><td>" . $row["dateandtime"]. "</td><td>" . $row["location"]. "</td></tr>";
	}
	echo "</table>";
	} else { echo "No results found"; }
	$conn->close();
?>
</table>
</body>
</html>