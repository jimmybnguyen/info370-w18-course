# Overview
In this assignment, you'll write a report investigating the levels of segregation in 14 cities. Working with data at the census tract level, you will compute and compare measures of segregation. The purpose of this assignment is to get experience considering how complex (and consequential) topics like segregation can be represented in comparable metrics. In doing so, you'll demonstrate the following skills:

- Using RMarkdown to generate a dynamic report (PDF or HTML)
- Using the DPLYR library to wrangle dataframes
- Computing aggregate metrics across observations
- Interpreting and explaining metrics (of segregation)
- Devising your own formula to measure a concept (segregation)

For each city, you'll be computing **3 metrics of segregation** from the U.S. Census Bureau, defined in this readingPreview the document. You will then thoughtfully compare the cities based on these metrics and **interpret the differences**. You will then **propose an alternative formula** for estimating segregation, and explain what it attempts to measure. Your final product (PDF or HTML page) should read like a formal/professional report that provides **clear and robust explanations** of your ideas. Feel free to choose how exactly you want to arrange and present information. 

# Data
The data for this assignment comes from the American Community Survey, and was manually downloaded through American FactFinder (Links to an external site.)Links to an external site. and prepared for use in this interactive visualization. The starter repository has data for 14 cities in it, each with the following information (each row is a census tract in the city). Note, for computational simplicity, we'll be doing our calculations by comparing the percentage of each tract that is white or not white. This is an admittedly crude measure of racial composition and is not meant to imply a unified social experience for non-white racial minorities.  

- GEOID: Geographic identifier of the census tract
- GEO.display.label: A description of the geographic area (when available)
- pop: The number of people living in the census tract
- pop.white: The number of people in the census tract that are white
- pop.not.white: The number of people in the census tract that are not white
- percent.white: The estimated percentage of the population that is white
- percent.not.white: The estimated percentage of the population that is not white
In addition to the data file for each city, you'll be given a **.json file** that contains the information necessary to create maps at the census tract level for extra credit. 

Feel free to **incorporate additional information** from other sources as you see fit, though this is not required. 

# Instructions
## Set-up
For this assignment, you will build a report (PDF or HTML) that summarizes the use of various metrics for understanding the segregation of cities. Begin by following this link (Links to an external site.)Links to an external site. to create your own private repository in the GitHub organization. I suggest that you begin by creating the following files (feel free to name them / organize as you see fit):

- **report.Rmd**: An RMarkdown file that, when compiled, generates your report. If you're creating an HTML report, you may want to use index.Rmd for easier GitHub hosting (see Submission section below).
- **metric_functions.R**: A file that contains the functions necessary for computing metrics of segregation
- **analysis.R**: A file that actually performs your analysis. Uses functions from metric_functions.R, and the results are used in report.Rmd.

While the heavy lifting is done in your  **analysis.R** using the functions in your **metric_functions.R file**, the results will be loaded into (and shown by) your **report.Rmd** file.

# Metric Definition
The first section of your report will **detail the 3** formulas you have chosen to use to compare the segregation of the cities. As you introduce each formula, you should describe how the arguments in the function capture the concept of segregation in the population. You should provide an intuitive explanation of what the metric indicates about a city. Consider the arguments for/against using each metric (i.e., what does it capture / overlook). Each formula should be properly formatted (as a formula) in your report.

# Metric Computation
For each city in your analysis, you'll need to **compute all of the metrics** of segregation. I strongly suggest that you do this in a separate file (i.e., analysis.R). A major advantage to using the R programming language for this assignment is that **operations are vectorized* (i.e., performed across a column simultaneously). As such, you should not loop through each observation to calculate your metrics unless it's necessary to make pair-wise comparisons. We expect that your computation of metrics (for *all 14 cities*) is performed in a clear and efficient manner.

## Metric Comparison
Once you have computed the segregation metrics for each city, you'll need to present that information in your report. We expect you to do this in two ways:

1. A written section that presents and interprets the differences in segregation measures by city. You should think carefully about what each metric is capturing about a city, and how to reason through their differences. You should answer questions such as (but not limited to):
    - Which cities are most segregated (for each metric)?
    - Does the ranking of segregation change depending on the metric being used? Why? What does this mean?
    - Does the use of different metrics yield a different understanding of comparison across cities?
2. A **set of visualizations** that complements your written section. Your visual representations should help make clear how the segregation metrics vary across cities. The number of charts built is up to you, but I imagine at least 3-4 (including tables) would be necessary to properly express the nuances in the data.
# Metric Proposal
In the final section of your report, you should propose a new metric for evaluating segregation across these cities. You should defend the formula presented, and describe what exactly it helps measure about a city. Why would someone use this metric as opposed to another one? You should compute your metric for each city, and describe how it compares to the other metrics. You will likely need a visualization in this section to properly compare your metric to the others proposed. 

# Extra Credit: Mapping
You may find it helpful to include maps in your report as an explanatory tool for exploring differences in metrics. For example, you may ask the question, what does the most segregated city look like for each metric? As such, .json files have been included with the geographic information needed. The code in this example (Links to an external site.)Links to an external site. (especially the second map) should help get you started. I suggest you load JSON data using this function:

```
library(geojsonio)
map.data <- file_to_geojson(input='filename.json', method='web', output = ":memory:")
```
You'll run into a few kinks along the way, but following the example above, you should be able to get maps up and running (with Leaflet). There are surely static approaches (if you're making a .pdf), but I have not yet tested those. 

 

# Submission
Please submit the URL of your GitHub repository to Canvas for this assignment. For easier reading of your report, please host your report on GitHub and provide a link to that URL in your README.md file. You should be able to do this simply by creating a gh-pages branch of your code, making your report accessible at info-370.github.io/a2-data-wrangling-USERNAME. If you've created a .html file, make sure to name your report index.html. For .pdf reports, you can make an index.html file to redirect to the hosted pdf as shown here (Links to an external site.)Links to an external site.. 