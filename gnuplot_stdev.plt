n=40
plot "merged.txt" u 1:(sum[col=2:n+1] column(col)/n):(sqrt(sum[col=2:n+1] (column(col)-(sum[col=2:n+1] column(col)/n))**2)/(n-1)) with yerrorbars t "title"
