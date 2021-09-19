set terminal png enhanced fontscale 1.4 size 1024,768
set output "fun1.png"

set grid

set format x "%.1f"
set format y "%.1f"
set format z "%.1f"

set xlabel "x"
set ylabel "y"
set zlabel "z"

set xrange [0:2*pi]

set xtics 0.5*pi
set format x '%.1Pπ'

plot "fun1.dat" u 1:3 t "scattered data w errors" w points pt 7, \
     "fun1.out" u 1:2 t "mkgrid"                  w lines, \
      sin(x)          t "function"                w lines
