

ID3 = /home/sasl/shared/main3/env/tools/include/
CC = g++ 
FLAGS = -DVERSION="\"${VERSION}\""
CLIBS= list.cpp convert.cpp create_map.cpp genre.cpp id3v2.cpp
LDLIBS= -${ID3} 
OBJS = ${CLIBS:.cpp=.o}

all: id3v2

id3v2: ${OBJS}
	${CC} -L ${LDLIBS} -Wall -o id3v2 ${OBJS} $@

%.o: %.cpp
	${CC} -I ${LDLIBS}${FLAGS} -c $<
.depend:
	gcc -MM ${CLIBS} > $@
-include .depend

clean:
	rm -f ${OBJS} 
	rm -f id3v2
