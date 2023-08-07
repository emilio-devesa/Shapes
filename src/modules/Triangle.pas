module Triangle;

export Triangle = (print);

import StandardOutput;

procedure print(size: integer; internalChar, externalChar: char);

end;

procedure print;
var position, x, y: integer;
begin
	for y:=1 to size do begin
		position:=size+1-y;
		for x:=1 to (2*y)-1 do
			if (x=1)
			then write(externalChar:position)
			else if (x=(2*y)-1) or (y=size)
				then write(externalChar)
				else write(internalChar);
		writeln;
	end;
end;

end.