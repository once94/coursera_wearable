# Wearable Computing Assignment

## Dependencies

* R
* dplyr: A Grammar of Data Manipulation R package
* data.table: Extension of Data.frame R package

## How to run the analysis?

1. Place a content of [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) to working directory or make the data folder working directory
2. Source the `run_analysis.R` file to R environment with command
```r
source('path/to/file/run_analysis.R')
```

## What the analysis do?

`run_analysis.R` is simple straigh-forward script running commands one-by-one, once loaded. The script is commented and self-explenatory most of the time, so it should not be hard to follow ideas and read the code.

### Step-by-step script explanation

In the script, steps below are separated by ## comments.

1. Loading dependencies
2. Loading general data - activity labels, feature names
3. Loading test data
4. Loading training data
5. Adding column representing learning set
6. Naming everything, so it is easy to understand
7. Binding together columns of every learning data set
8. Binding together rows of each learning set
9. Extracting only means and standard deviations columns
10. Replacing performed activity id with its actual name in data set - *Data Set 1* is ready
11. Making tidy data - *Data Set 2* is ready
12. (optional) cleaning the mess left behind.
13. (optional) writing *Data Set 1* and *Data Set 2* to text files

*(optional)* commands are controlled by commenting and uncommenting.

