program fibonacci;
var
	n: integer;
	res: longint;
function fibonacci(n: integer): longint;
var
	i: integer;
	p, q, r: longint;
begin
	if n <= 0 then
		fibonacci := 0
	else
	begin
		q := 0;
		r := 1;
		for i := 2 to n do
		begin
			p := q;
			q := r;
			r := p + q
		end;
		fibonacci := r
	end
end;
begin
	read(n);
	res := fibonacci(n);
	writeln(res)
end.
