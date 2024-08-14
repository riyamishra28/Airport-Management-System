function searchFlights() {
    var source = document.getElementById('source').value;
    var destination = document.getElementById('destination').value;
  
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (xhr.readyState == 4 && xhr.status == 200) {
        document.getElementById('flightResults').innerHTML = xhr.responseText;
      }
    };
    xhr.open('GET', 'search_flights.php?source=' + source + '&destination=' + destination, true);
    xhr.send();
  }
  