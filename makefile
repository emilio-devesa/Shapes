GPC=gpc

UNIT_PATH=src/modules
UNIT_DESTINATION=build/modules
OBJECT_DESTINATION=build
EXECUTABLE_PATH=bin

GPCFLAGS=--extended-pascal -O3 -Wall --executable-file-name -g --automake --unit-path=$(UNIT_PATH) --unit-destination-path=$(UNIT_DESTINATION) --object-destination-path=$(OBJECT_DESTINATION) --executable-path=$(EXECUTABLE_PATH)



all: src/Shapes.pas
	@echo "Compilation"
	$(GPC) $(GPCFLAGS) src/Shapes.pas

clean: 
	@echo "Removing all but source code files"
	rm bin/*
	rm build/modules/*