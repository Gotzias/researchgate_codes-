#!/usr/bin/gnuplot -persist
#    	G N U P L O T
# you want to plot the contents of many files 'plot_i.txt', 
# each having two columns x and y.

reset
set terminal postscript eps enhanced color "Helvetica" 14
set output "lines_figure.eps"
set key font 'Times-Roman, 9 
set key outside samplen 1 spacin 1.5 
set macros
# Placement of label in the graphs
label_position= "at graph 0.05,.92 font 'Times-Roman,14' front rotate by 0 tc rgb '#606060'"
# Optional:  for a better output you may use a color palette from 
# https://github.com/Gnuplotting/gnuplot-palettes 
# by Hagen Wierstorf (here, i use rdgy.pal). You may ommit the next line!
load 'rdgy.pal'

YTICSL = "set format y '%g'; set autoscale y; set ytics scale 'minor' font ',8'; set ylabel 'variable y'  offset 3.5,0. font ',10' tc rgb '#606060 "
XTICSL = "set format x '% g' ;set autoscale x; set xtics scale 'minor' font ',8' offset 0. 20 ;set xlabel 'variable, x' offset -5,0.5 font ',10' tc rgb '#606060'"

######################################################################################################################
@XTICSL; @YTICSL
set label 1 'Graph_label' @label_position
plot for [i=0:20] 'plot_'.i.'.txt' u 1:2 with lines ls 1+7*i/20. lw 2 title "data".i
