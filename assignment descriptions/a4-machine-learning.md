# Overview
In this assignment, you'll be competing in Driven Data's predicting poverty competition (Links to an external site.)Links to an external site.. While the intention is to perform as well as possible in the competition, you'll also need to meet the requirements described below (trust me, they'll help improve your score).  You can get a good feeling for how to go about the project by viewing this  benchmark (Links to an external site.)Links to an external site. blog post. To improve on their score, you'll need to:

- Leverage different features of the data
- Attempt different algorithms
- Tune the algorithms

Your grade will be based on turning in a well documented project (notebook(s)) that clearly describes your process and reasoning behind your approach. You will not be penalized for a low score, but have the opportunity to guarantee a high score based on your performance (see the Incentives section below). 

# Set up
You'll start this project like any other, by clicking on this link to create a private repository in which to do your work. You'll also need to create an account on the Driven Data website. You need to make your username your  UW Net ID-UW so that we can easily identify you on the leaderboard. For example, mikefree-UW (the -UW will allow us to quickly search the leaderboard). Then, you'll be able to make up to 2 submissions per day to the competition. You'll also need to download all of the data from this [page](https://www.drivendata.org/competitions/50/worldbank-poverty-prediction/page/99/). You should also edit your .gitignore file to ignore your data files (I suggest adding a data/ folder), as the data's quite large.

The structure of your project is up to you, but it should be should be easy to understand and well documented.  One structure that could work well is having a central notebook that documents your work flow and progress. I strongly suggest you write some helper functions in a single file, and/or do your data prep separate from your analysis. Please make your notebook easily readable by using Markdown and sufficient comments.

# Data Prep
As described on the [data page](https://www.drivendata.org/competitions/50/worldbank-poverty-prediction/page/99/), the predictions you'll make are at the household level. However, there is also data at the individual level. Figuring out the proper way to incorporate the individual level data is a notable challenge. This process of appropriately incorporating new features requires the skills of feature generation and/or feature engineering. At a minimum, we expect you to appropriately incorporate the individual level data for each country (this may be trickier than it sounds). You may want to test your algorithms using differently structured training datasets to improve your performance.

I suggest you do your data prep in a seperate file, and feel free to do it in a different language that your analysis. 

# Modeling
We expect that you leverage multiple different classifiers in an attempt to maximize your score. You must use at least 4 algorithms across your attempts, and the algorithms you use are up to you. This will, of course, require that you research the implementation and background behind new approahces. For each algorithm, you must follow a consistent process that incorporates:

Appropriately using testing and training data
Pre-processing your data using a scaler (if necessary)
Performing cross validation
Optimizing the (hyper) parameters of the model using a grid-search
 

# Model Comparison
In addition to running multiple models, you need to create at least 3 visual comparisons of your models. This includes, but is not limited to:

- Comparing the accuracy of each model
- Comparing the predictions to the data (for each model)
- Assessing the performance for different parameters 

The visual comparisons that you make (graphs, tables) should help you understand which models are best. 

# Inscentives
To make this a little more fun, we'll have some inscentives. There are, of course, the monetary prizes if you win the competition, but we'll add some inscentives of our own. Remember that this is an individual assignment, and you cannot share your code with other (though feel free to help debug, or discuss your approach at a high level). So, here are the opportunities:

- If you beat my score in the competition, you get 100% on the assignment 
- If you are in the top 5 students, you get 100% on the assignment 
# Submission
Please submit a link to your GitHub repository for your submission. Your README.md file should describe the strucutre of the project, and all notebooks should have sufficnet Markdown that describes the project. You also must make at least two submissions to the Driven Data competition.