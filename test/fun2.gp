set terminal png enhanced fontscale 1.4 size 1024,768
set output "fun2.png"

set grid

set format x "%.1f"
set format y "%.1f"
set format z "%.1f"

set xlabel "x"
set ylabel "y"
set zlabel "z"

splot "fun2.dat" u 1:2:3 t "scattered data" w points pt 7, \
      "fun2.out" u 1:2:3 t "mkgrid"         w lines
