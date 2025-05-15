module square;

export square = (print);

import StandardOutput;

procedure print(size: integer; internalChar, externalChar: char);

end;

procedure print;
var x, y: integer;
begin
	for y:=1 to size do begin
		for x:=1 to size do
			if (x=1) or (x=size) or (y=1) or (y=size)
			then write(externalChar)
			else write(internalChar);
		writeln;
	end;
end;

end.
