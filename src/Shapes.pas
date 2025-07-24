program Shapes;{
	Shapes
	Command Line program written in Pascal ISO 10206 (Extended Pascal) that draws geometric shapes
}

import StandardInput; StandardOutput;
		square qualified;
		triangle qualified;
		rhombus qualified;

function getInternalChar: char;
var c: char;
begin
	write('Internal character?: ');
	readln(c);
	getInternalChar:=c;
end;

function getExternalChar: char;
var c: char;
begin
	write('External character?: ');
	readln(c);
	getExternalChar:=c;
end;

function getSize(min, max: integer): integer;
var size: integer;
begin
	repeat
		write('Size? (min=',min:1,', max=',max:2, '): ');
		readln(size);
		if (size<min) or (max<size)
		then write('Size is not valid.');
	until (min<=size) and (size<=max);
	getSize:=size;
end;

function mainMenu: integer;
var opc: integer;
begin
	repeat
		writeln('SHAPES');
		writeln('1. Square');
		writeln('2. Triangle');
		writeln('3. Rhombus');
		writeln('0. Exit');
		write('Option?: ');
		readln(opc);
		if (opc<0) or (3<opc)
		then writeln('Invalid option.');
		mainMenu:=opc;
	until(0<=opc) and (opc<=3);
end;

function printShape(option: integer): integer;
begin
	case (option) of
		1: square.print(getSize(2,80), getInternalChar, getExternalChar);
		2: triangle.print(getSize(3,40), getInternalChar, getExternalChar);
		3: rhombus.print(getSize(3,80), getInternalChar, getExternalChar);
		0: {exit};
	end;
	printShape:=option;
end;

begin
	repeat
	until (printShape(mainMenu)=0);
end.