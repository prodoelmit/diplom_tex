set term svg size 700,300
set style line 7 lt 1 lc rgbcolor "black" lw 1.1
set xzeroaxis ls 7
set grid
set xrange [0:18]
set xlabel '$Z[\text{м}]$'
set ylabel '$M_\text{изг}[\text{тс}\cdot\text{м}]$'
set output 'BendingMoments.svg'
plot 'BendingMoments.txt' u 1:2 w points t '$M_\text{изг}$', \
	'BendingMomentsBPS.txt' u 1:2 w lines t '$FromBPS$'
unset output
unset term
