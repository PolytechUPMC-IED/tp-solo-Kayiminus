

ID3 = /home/sasl/shared/main3/env/tools/include
LDLIBS2 =/home/sasl/shared/main3/env/tools/lib
CC =g++ 
FLAGS = -DVERSION="\"${VERSION}\""
CLIBS= list.cpp convert.cpp genre.cpp id3v2.cpp
LDLIBS= ${ID3} 
OBJS = ${CLIBS:.cpp=.o}


all: id3v2

id3v2: ${OBJS}
	${CC} -L${LDLIBS2} -Wall -o id3v2 ${OBJS} > $@ -lid3 -lz

%.o: %.cpp
	${CC}-I ${LDLIBS}${FLAGS} -c $<
.depend:
	gcc -MM ${CLIBS} > $@
-include .depend

clean:
	rm -f ${OBJS} 
	rm -f id3v2
install:
	cd ..
	cd ..
	mkdir -p bin
	cp /3407971/Informatique/EnvDev/tp-solo-kayiminus/src/id3v2  /3407971/Informatique/EnvDev/tp-solo-kayiminus/bin
