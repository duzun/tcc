tcc -DTCC_VERSION="\"0.9.25\"" -o tcc.exe ../tcc.c

tcc -o libmaker.exe tools\tiny_libmaker.c lib\crt1.c
tcc -o impdef.exe tools\impdef.c lib\crt1.c

tcc -c lib/crt1.c
tcc -c lib/chkstk.S
tcc -c lib/libtcc1.c
tcc -c lib/alloca86.S
libtcc rcs libtcc1.a crt1.o chkstk.o libtcc1.o alloca86.o