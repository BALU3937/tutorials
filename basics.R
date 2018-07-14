print("!Helloworld")
print(11.2+2)
print(2+2.33)
mystring <- "balasubrahmanyam"
print(mystring)
# single line comment,(multi line comments do not work with R)
# for double comments try this (will get interpreted but no output so no damage to our program)
if(FALSE)
{
  "this is multiline demonestration for comments
                     hope u understood it."
  
}
mystring <- "Pitchuka Balasubrahmanyam"
print(mystring)
#In contrast to other programming languages like C and java in R, the variables
#are not declared as some data type. The variables are assigned with R-Objects 
#and the data type of the R-object becomes the data type of the variable


#In R programming, the very basic data types are the R-objects called vectors

v <- TRUE
print(class(v))

v <- "TRUE"
print(class(v))

v <- 54
print(class(v))

v <- 30+89i
print(class(v))

v <- charToRaw("HELLO")       #hexadecimal representation of data
print(class(v))
print(v)
