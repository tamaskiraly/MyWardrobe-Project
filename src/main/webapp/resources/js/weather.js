if ("geolocation" in navigator) {
	navigator.geolocation
			.getCurrentPosition(function(position) {
				loadWeather(position.coords.latitude + ','
						+ position.coords.longitude);
			});
} else {
	loadWeather("Dublin,IE", "");
}

$(document).ready(function() {
	setInterval(getWeather, 10000);
});

function loadWeather(location, woeid) {
	$
			.simpleWeather({
				location : location,
				woeid : woeid,
				unit : 'C',
				success : function(weather) {
					city = weather.city;
					temp = weather.temp + '&deg;';
					wcode = '<img class="weathericon" src="resources/img//weathericons/'
							+ weather.code + '.svg">';
					wcode = '<img class="weathericonHeader" style="height: 100%; width: 100%;" src="resources/img//weathericons/'
							+ weather.code + '.svg">';
					wind = '<p>' + weather.wind.speed + '</p><p>'
							+ weather.units.speed + '</p>';
					humidity = weather.humidity + ' %';
					textwcode = weather.text;
					$(".location").text(city);
					$(".temperature").html(temp);
					$(".climate_bg").html(wcode);
					$(".windspeed").html(wind);
					$(".humidity").text(humidity);
					$(".climate_bgHeader").html(wcode);
					$(".temperatureHeader").html(temp);
					$(".locationHeader").text(city);
					$(".textwcode").text(textwcode);
				},
				error : function(error) {
					$(".error").html('<p>' + error + '</p>');
				}

			});
}
