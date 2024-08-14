<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "airline_management_system";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$source = $_GET['source'];
$destination = $_GET['destination'];

$sql = "SELECT * FROM (Flight NATURAL JOIN Travels_On NATURAL JOIN Route) WHERE Route.Take_Off_point = '$source' AND Route.Destination = '$destination'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  echo "<h2>Flights from $source to $destination:</h2>";
  echo "<ul>";
  while($row = $result->fetch_assoc()) {
    echo "<li>Flight ID: " . $row["Flight_ID"] . "<br> - Departure: " . $row["Departure"] . "<br> - Arrival: " . $row["Arrival"] . "</li>";
  }
  echo "</ul>";
} else {
  echo "No flights found.";
}
$conn->close();
?>