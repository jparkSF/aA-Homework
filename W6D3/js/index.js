console.log("Hello from the JavaScript console!");

// Your AJAX request here

$.ajax({
  method: "GET",
  url: "http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b",
  success: function(message){
    console.log(message.name);
    console.log("Lon : " + message.coord.lon + ", Lat : " + message.coord.lat);
  },
  error(){
    console.error("There's an error");
  }
});


// Add another console log here, outside your AJAX request
console.log("end of the request!");
