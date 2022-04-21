set terminal png enhanced fontscale 1.4 size 1024,768
set output "fun3.png"

set grid

set format x "%.0f"
set format y "%.0f"
set format z "%.1f"

set xlabel "x"
set ylabel "y"
set zlabel "z"

set xrange [-10:10]
set yrange [-10:10]
set zrange [-0.5:1.5]

set samples 30

r(x,y) = sqrt(x**2+y**2)

si(x) = sin(x)/x

sinc(x) = sin(pi*x)/pi/x

splot si(r(x,y))         t "input function" w lines, \
      "fun3.dat" u 1:2:3 t "scattered data" w points pt 7, \
      "fun3.out" u 1:2:3 t "mkgrid"         w lines
