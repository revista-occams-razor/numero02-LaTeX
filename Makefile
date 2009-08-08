NUMBER=02
EDITION=03
BUILD=01
TAG=HQ

NAME=occams-razor-${NUMBER}-${EDITION}-${BUILD}-${TAG}

all: *tex
	latex portada.tex && latex portada.tex && dvips portada.dvi -o ${NAME}.ps && ps2pdf ${NAME}.ps
	rm -f ${NAME}.ps.gz
	#gzip ${NAME}.ps

.PHONY:
clean:
	rm -f *aux *dvi *log 

clean-all:
	rm -f *~ *aux *dvi *log ${NAME}.ps.gz ${NAME}.pdf
