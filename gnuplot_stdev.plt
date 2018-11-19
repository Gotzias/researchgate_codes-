################################################################################################
############################# standard deviation in gnuplot ####################################
################################################################################################
## Computes the standard deviation in gnuplot
## loads a file with n=40 y columns (i.e, xyyyyy....y)
## plots the mean value of the columns and their standard deviation (stdev),
## the mean and stdev are computed inline, using summations within the plot command  
## the mean is: mean=sum[col=2:n+1] column(col)/n
## the stdev=sqrt(sum[col=2:n+1] (column(col)-(sum[col=2:n+1] column(col)/n))**2)/(n-1)
## the plot command is: plot "file" u 1:2:3 with yerrorbars t "title", replace 2 with the expression of mean and 3 with stdev
#################################################################################################
n=40
plot "merged.txt" u 1:(sum[col=2:n+1] column(col)/n):(sqrt(sum[col=2:n+1] (column(col)-(sum[col=2:n+1] column(col)/n))**2)/(n-1)) with yerrorbars t "title"
