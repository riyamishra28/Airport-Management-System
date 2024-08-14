<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "airline_management_system";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Retrieve the passenger name from the form
$passengerName = $_POST['passengerName'];

// Retrieve flight details based on passenger name
$sql = "SELECT Ps_Name,Flight.Flight_ID, Departure, Arrival FROM Passengers INNER JOIN Flight ON Passengers.Flight_ID = Flight.Flight_ID WHERE Ps_ID = '$passengerName'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Output flight details
  echo "<h3>Flight Details for Passenger: $passengerName</h3>";
  echo "<ul>";
  while($row = $result->fetch_assoc()) {
    echo "<li>Passenger Name:".$row["Ps_Name"]."<br>Flight ID: " . $row["Flight_ID"]. "<br>Departure: " . $row["Departure"]. "<br>Arrival: " . $row["Arrival"]. "</li>";
  }
  echo "</ul>";
} else {
  echo "Invalid PID for passenger: $passengerName";
}

$conn->close();
?>

