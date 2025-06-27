buildDirectory = ./build
includeDirectory = ./include
libraryDirectory = ./lib
testDirectory = ./test
sourceDirectory = ./src

builtApplication = $(buildDirectory)/Debugger
buildFiles = $(buildDirectory)/Debugger.o
libraryFiles = $(sourceDirectory)/main.cpp

build: $(builtApplication)
	$(builtApplication)
	make clean
clean: 
	rm -f $(buildDirectory)/*

$(builtApplication): $(buildFiles)
	g++ $(buildFiles) -o $(buildDirectory)/Debugger

$(buildFiles): $(libraryFiles)
	g++ -c $(sourceDirectory)/main.cpp -o $(buildDirectory)/Debugger.o 	
