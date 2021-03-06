$(document).ready(function(){

var x = document.getElementById("demo");

function getLocation()
{
	if (navigator.geolocation)
	{
		navigator.geolocation.getCurrentPosition(usePosition);
	}
	else
	{
		x.innerHTML = "Geolocation is not supported";
	}
}

function usePosition(position)
{
	var lat = position.coords.latitude;
	var lon = position.coords.longitude;

	x.innerHTML = "Latitude: " + lat +
		"<br>Longitude: " + lon;

	console.log("Latitude: " + lat);
	console.log("Longitude: " + lon);

	//lat1 = 37.790306;
	//lon1 = -122.404469;

	var lat1 = 37.783958;
	var lon1 = -122.392385;

	console.log("distance: ", distance(lat1, lon1, lat, lon));
	console.log("isCloseEnough: ", isCloseEnough(lat1, lon1, lat, lon))	
}

Number.prototype.toRad = function()
{
	return this * Math.PI / 180;
}

function distance(lat1, lon1, lat2, lon2)
{
	var R = 6371;
	var x1 = lat2 - lat1;
	var dLat = x1.toRad();
	var x2 = lon2 - lon1;
	var dLon = x2.toRad();
	var a = Math.sin(dLat/2) * Math.sin(dLat/2) + 
                Math.cos(lat1.toRad()) * Math.cos(lat2.toRad()) * 
                Math.sin(dLon/2) * Math.sin(dLon/2);  
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
	var d = R * c * 1000;
	return d;
}

function isCloseEnough(lat1, lon1, lat2, lon2)
{
	return distance(lat1, lon1, lat2, lon2) <= 50;
}

$("#checkinButton").click(getLocation);
});