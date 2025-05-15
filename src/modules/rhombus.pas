module rhombus;

export rhombus = (print);

import StandardOutput;

procedure print(size: integer; internalChar, externalChar: char);

end;

procedure print;
var position, x, y: integer;
begin
	for y:=1 to ((size+1) div 2) do begin
		position:=(size-(2*y)+3) div 2;
		for x:=1 to (2*y)-1 do
			if (x=1)
			then write(externalChar:position)
			else if (x=(2*y)-1)
				then write(externalChar)
				else write(internalChar);

		writeln;
	end;
	for y:=(size div 2) downto 1 do begin
		position:=(size-(2*y)+3) div 2;
		for x:=1 to (2*y)-1 do
			if (x=1)
			then write(externalChar:position)
			else if (x=(2*y)-1)
				then write(externalChar)
				else write(internalChar);
		writeln;
	end;
end;

end.