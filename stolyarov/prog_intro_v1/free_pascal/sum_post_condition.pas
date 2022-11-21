program sum_post_condition;
var
	sum: integer;
	x: integer;
begin
	sum := 0;
	repeat
		readln(x);
		sum := sum + x
	until sum > 1000
end.
