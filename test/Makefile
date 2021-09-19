MKDATA := perl mkdata
MKGRID := perl ../bin/mkgrid
GP := gnuplot -p

ECHO = echo
SILENT = @
SECHO = $(SILENT)$(ECHO)

test: fun1.png fun2.png fun3.png

%.png: %.out
	$(SILENT)$(GP) $(basename $<).gp

fun1.dat:
	$(SILENT)$(MKDATA) --fun=1 --xrange=0:6.3 --yrange=0:0 --err=0.2 --npts=50 > $@

fun2.dat:
	$(SILENT)$(MKDATA) --fun=2 --xrange=0:2.5 --yrange=0:0 --err=0.2 --npts=20 > $@

fun3.dat:
	$(SILENT)$(MKDATA) --fun=3 --xrange=0:5.0 --yrange=0:5 --err=0.2 --npts=80 > $@

fun1.out: fun1.dat
	$(MKGRID) -y -i $< --using=1,3 --sign=1 --range=0:6.3 --grid=63 --sh=1.0 $@

fun2.out: fun2.dat
	$(MKGRID) -y -i $< --range=0:2.5 --grid=10 --sh=1.0 $@

fun3.out: fun3.dat
	$(MKGRID) -y -i $< --range=0:5,0:5 --grid=20 --sh=1.0 $@

clean:
	$(RM) fun?.dat fun?.out fun?.png

.PHONY: clean
