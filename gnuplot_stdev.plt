################################################################################################
############################# standard deviation in gnuplot ####################################
################################################################################################
## Computes the standard deviation in gnuplot
## so we have a file with n=40 y columns (i.e, xyyyyy....y)
## we want to plot the mean value of these columns along with their standard deviation (stdev),
## we show that the mean and stdev can be computed inline with the plot command. If n=40, 
## the mean is: mean=sum[col=2:n+1] column(col)/n
## the stdev=sqrt(sum[col=2:n+1] (column(col)-(sum[col=2:n+1] column(col)/n))**2)/(n-1)
## the plot command plot "file" u 1:2:3 with yerrorbars t "title", where 2 is the mean and 3 the stdev
#################################################################################################
n=40
plot "merged.txt" u 1:(sum[col=2:n+1] column(col)/n):(sqrt(sum[col=2:n+1] (column(col)-(sum[col=2:n+1] column(col)/n))**2)/(n-1)) with yerrorbars t "title"
