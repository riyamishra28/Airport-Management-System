document.getElementById('searchForm').addEventListener('submit', function(event) {
    event.preventDefault();
    var passengerName = document.getElementById('passengerName').value;
    if (passengerName.trim() !== '') {
      fetch('flight_details.php', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: 'passengerName=' + encodeURIComponent(passengerName),
      })
      .then(response => response.text())
      .then(data => {
        document.getElementById('flightDetails').innerHTML = data;
      })
      .catch(error => console.error('Error:', error));
    }
  });
  