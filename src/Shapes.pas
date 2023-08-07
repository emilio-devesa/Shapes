program Shapes;{
	Shapes
	Command Line program written in Pascal ISO 10206 (Extended Pascal) that draws geometric shapes

	Emilio Devesa
	http://emiliodevesa.wordpress.com
}

import StandardInput; StandardOutput;

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
		1: writeln('Print a square');
		2: writeln('Print a triangle');
		3: writeln('Print a rhombus');
		0: {exit};
	end;
	printShape:=option;
end;

begin
	repeat
	until (printShape(mainMenu)=0);
end.