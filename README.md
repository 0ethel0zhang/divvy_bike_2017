# Divvy bike Trip Duration Prediction

### Objective & Key Points
Using 2017 Divvy Bikes data, I'd like to:

1) study the patterns (i.e. the most popular routes, genearl usage, difference in sub-groups of users etc.) 
2) create a model (models) that predict trip duration. 
  Given a ride's start and end stations, some of the riders demographic data, some bike information, and potentially weather data, I'd like to predict how long the ride would take.

*Some of the key takeaways from the analysis:*

1. Distance is by far the most predictive among all variables. The longer the distance, the longer the trip duration.
2. Other variables that are important and make sense are age (older the age, longer the duration), and gender (Males take slighly shorter time to finish trips).
3. Weather data can improve the model accuracy but only by a little bit.
4. Gradient boosted tree model with weather info is the most accurate (R-squared = 14.8%), and yet it is not that much better than without weather data (R-squared = 14.5%), or a linear model (R-squared = 13.1%).

*Going forward, other feature engineering, other non-linear models, or even other external data can be explored to improve the performance.*


### Instructions for running the analysis

Create the environment:
Run the following command in the main directory in command line
(Replace the NAMEYOULIKE part with whatever name you want to call your virtual environment):
	
	conda env create -f environment.yml -n NAMEYOULIKE

Activate the environment using:
(Replace the NAMEYOULIKE part with the name you called your virtual environment):
	
	conda activate NAMEYOULIKE

Get the data by running the following commands in the main folder:
	
	make clean
	make all

To checkout/run the main analysis, please go to notebook/Analyze.ipynb
