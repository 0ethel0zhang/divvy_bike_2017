.PHONY:
	all
	clean

BEACH_URL = "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
BIKE_URL_1 = "https://s3.amazonaws.com/divvy-data/tripdata/Divvy_Trips_2017_Q1Q2.zip"
BIKE_URL_2 = "https://s3.amazonaws.com/divvy-data/tripdata/Divvy_Trips_2017_Q3Q4.zip"

data/raw/Divvy_Trips_2017_Q1Q2.zip:
	python src/data/download.py $(BIKE_URL_1) $@

data/raw/Divvy_Trips_2017_Q3Q4.zip:
	python src/data/download.py $(BIKE_URL_2) $@

data/external/Beach_Weather_Stations_-_Automated_Sensors_-_2017_-_Air_Temperature.csv:
	python src/data/download.py $(BEACH_URL) $@

all: data/external/Beach_Weather_Stations_-_Automated_Sensors_-_2017_-_Air_Temperature.csv data/raw/Divvy_Trips_2017_Q1Q2.zip data/raw/Divvy_Trips_2017_Q3Q4.zip

clean:
	rm -f data/raw/*.zip
	rm -f data/external/*.csv