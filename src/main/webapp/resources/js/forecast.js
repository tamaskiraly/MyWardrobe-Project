
function getWeatherDemo() {
	$.get('https://query.yahooapis.com/v1/public/yql?q=select * from weather.forecast where woeid in (select woeid from geo.places(1) where text="Dublin") and u="c" &format=json', function (data) {
		 $('.jumbotron').html('<h2>' + data.query.results.channel.item.title + '</h2>' +
	                '<h4 id="forecast-details" style="max-height: 200px; overflow: hidden;">' + data.query.results.channel.item.description + '</h4>') 
	            $('.container').show();
	});
    
}

function getWeather() {
    var location = $('#city').val();

    $.get('https://query.yahooapis.com/v1/public/yql?q=select * from weather.forecast where woeid in(select woeid from geo.places(1) where text="' + location + '") and u="c" &format=json' , function (data) {
       
        if (data.query.results === null) {
        	getWeatherDemo();

        } else {
            $('.jumbotron').html('<h2>' + data.query.results.channel.item.title + '</h2>' +
                '<h4 id="forecast-details" style="max-height: 200px; overflow: hidden;">' + data.query.results.channel.item.description + '</h4>') 
            $('.container').show();
        }

    });
}