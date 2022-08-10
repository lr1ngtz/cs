program modulo;
var
	x: integer;
begin
	read(x);
	{* single branching
	if x < 0 then
		x := -x;
	writeln(x) *}
	if x > 0 then
		writeln(x)
	else
		writeln(-x)
end.
