PathFinder
===================

I wrote this to solve the following problem:

*A robot is located at the top-left corner of a 5x5 grid. The robot can move either up, down, left, or right, but can not visit the same spot twice. The robot is trying to reach the bottom-right corner of the grid. How many unique possible paths can the robot take to reach the bottom right corner?*

Using PathFinder
-----------------

Create a new pathfinder and enter the size of the grid. In this example, we will use a 5x5: 

    path_finder = PathFinder.new(5)

Then just call 'explore', which will return the number of unique paths:

    path_finder.explore



    

