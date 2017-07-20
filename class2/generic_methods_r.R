# Create get_n_elements
get_n_elements<-function(x, ...){
  UseMethod("get_n_elements")
}

# By itself, the generic function doesnt do anything.
#For that, you need to create methods, which are just regular 
# functions with two conditions:
# # The name of the method must be of the form generic.class.
# The method signature - that is, the arguments that are passed in to the method - must contain the signature of the generic.


get_n_elements.data.frame<-function(x,...){
  nrow(x)*ncol(x)
}

df <- iris
get_n_elements.data.frame(df)

#For other types of data structure, we can define a default method. Let's see:

get_n_elements.default<-function(x, ...){
  length(unlist(x))
}

v <- 1:10
get_n_elements.default(v)


#To see all the available methods, we use:

#with double quotes
methods("get_n_elements")

#without double quotes
methods(get_n_elements)




