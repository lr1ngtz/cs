program square;
var
	x: integer;
begin
	{* read() reads from standart input
	, for instance ./square < num.txt will
	read num from file num.txt.

	pipe: echo 25 | ./square > result.txt	
	in this case we won't see the res in the terminal.

	The program itself doesn't know where the input
	comes from and where the output goes.
   *}
	read(x);
	x := x * x;
	writeln(x)
end.
