###Run Analysis

run_analysis() function calls 5 functions to produce the desired tidy data output.

Course Project has 5 steps in it. Functionality of each of these steps is split into a function so it is easy to follow.

run_analysis(), is the top level function that we call from R Console. This functions calls each of the 5 functions one after the other. Functions are named 
* step_01()
* step_02()
* step_03()
* step_04()
* step_05() 

All data needed for this project is placed under folder called "project" in current working directory.

### Example: Caching the Mean of a Vector

In this example we introduce the `<<-` operator which can be used to
assign a value to an object in an environment that is different from the
current environment. Below are two functions that are used to create a
special object that stores a numeric vector and caches its mean.

The first function, `makeVector` creates a special "vector", which is
really a list containing a function to

1.  set the value of the vector
2.  get the value of the vector
3.  set the value of the mean
4.  get the value of the mean
