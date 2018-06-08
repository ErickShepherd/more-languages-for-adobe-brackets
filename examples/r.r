# Accessed by:    Erick Edward Shepherd
# Accessed on:    2018-06-06
# Language:       R
# Source entity:  CodeMirror
# Source site:    codemirror.net/mode/r/index.html
# 
# Purpose:        Example to test plugin success in syntax highlighting.
# 
# License:        MIT License
# 
#                 Copyright (C) 2017 by Marijn Haverbeke <marijnh@gmail.com> 
#                 and others.
# 
#                 Permission is hereby granted, free of charge, to any person 
#                 obtaining a copy of this software and associated  
#                 documentation files (the "Software"), to deal in the Software
#                 without restriction, including without limitation the rights 
#                 to use, copy, modify, merge, publish, distribute, sublicense,
#                 and/or sell copies of the Software, and to permit persons to 
#                 whom the Software is furnished to do so, subject to the 
#                 following conditions:
# 
#                 The above copyright notice and this permission notice shall
#                 be included in all copies or substantial portions of the 
#                  Software.
# 
#                 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY  
#                 KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE  
#                 WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
#                 PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
#                 COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
#                 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR  
#                 OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
#                 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 

X <- list(height = 5.4, weight = 54)
cat("Printing objects: "); print(X)
print("Accessing individual elements:")
cat(sprintf("Your height is %s and your weight is %s\n", X$height, X$weight))

# Functions:
square <- function(x) {
  return(x * x)
}
cat(sprintf("The square of 3 is %s\n", square(3)))

# In R, the last expression in a function is, by default, what is
# returned. The idiomatic way to write the function is:
square <- function(x) {
  x * x
}
# or, for functions with short content:
square <- function(x) x * x

# Function arguments with default values:
cube <- function(x = 5) x * x * x
cat(sprintf("Calling cube with 2 : %s\n", cube(2))  # will give 2^3
cat(sprintf("Calling cube        : %s\n", cube())   # will default to 5^3.

powers <- function(x) list(x2 = x*x, x3 = x*x*x, x4 = x*x*x*x)

cat("Powers of 3: "); print(powers(3))

# Data frames
df <- data.frame(letters = letters[1:5], '#letter' = 1:5)
print(df$letters)
print(df$`#letter`)

# Operators:
m1 <- matrix(1:6, 2, 3)
m2 <- m1 %*% t(m1)
cat("Matrix product: "); print(m2)

# Assignments:
a <- 1
b <<- 2
c = 3
4 -> d
5 ->> e
