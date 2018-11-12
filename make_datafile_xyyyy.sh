# so you have a set of files 'plot_i.txt', for i=1,2,.., each having two columns x and y, 
# their first column x is exactly the same, their second y is different
# you want to make a single file 'merged.txt' having the format xyyyy...y,
# containing all the y columns of the files:

#!/bin/bash
cat plot_1.txt > merged.txt
for files in plot_*; do
if [ $files != "plot_1.txt" ]; then
paste -d' ' merged.txt <(cut -d' ' -f2 $files) > temp.txt && mv temp.txt merged.txt
fi done
# in the paste command i use space as a delimiter, if you use comma replace d' ' with d',' 
