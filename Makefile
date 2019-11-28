all:
	ff-c++ test.cc
	clang++ -c -g -std=c++17 -I/usr/local/lib/ff++/4.4-2/include test.cc
	clang++ -bundle -undefined dynamic_lookup -g test.o -o ./myserver.dylib

pdf:
	ff-c++ plotPDF.cc
	clang++ -c -g -std=c++17 -I/builds/freefem-source-develop/lib/ff++/4.0/include plotPDF.cc
	g++ -bundle -undefined dynamic_lookup -g plotPDF.o -o ./plotPDF.dylib