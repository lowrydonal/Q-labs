// Write your own version of these built in q functions

// Q1.
myMax:{|/[x]}

// Q2.
myMin:{&/[x]}  

// Q3.
myCount:{sum x[::]:1}           // convert to list of 1s and sum list

Q4.
myDistinct:{first each group x}