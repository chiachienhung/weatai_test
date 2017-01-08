# Weatai_API
API to get learning resource information from Coursera, Udacity and Youtube
This is a API to get instant weather information from [Central Weater Bureau Open Data](http://opendata.cwb.gov.tw/about) and [Environmental Protection Association Open Data](http://opendata.epa.gov.tw/). We've deployed on heroku and you can check it [Here](https://weataiapi.herokuapp.com/).

## Routes

- `/` - check if API alive
- `/v0.1/weather` - show all the instant weather and air quality information 
- `/v0.1/weather/[:station_id]` - show a station's instant weather and air quality information(1 to 38)
  -for examples:[station_id=3](https://weataiapi.herokuapp.com/api/v0.1/weather/3)


## Built With

* [Sinatra](https://github.com/sinatra/sinatra) - The web framework used
* [Heroku](https://www.heroku.com/) - Cloud Application Platform


## Authors

* **Neil,Lee** - [Github](https://github.com/Neilxx)
* **Andy,Chen** - [Github](https://github.com/youyotsu)
* **Chien,Hung** - [Github](https://github.com/chiachienhung)
