program olympiad_counter;
const
	max_school = 67;
	max_group = 100;
type
	counters_array = array [1..max_school] of integer;
var
	counters: counters_array;
	i, c, n: integer;
begin
	for i := 1 to max_school do
		counters[i] := 0;
	{$I-}
	while not eof do
	begin
		readln(c);
		if IOResult <> 0 then
		begin
			writeln('Incorrect data');
			halt(1)
		end;
		n := c div max_group;
		if (n < 1) or (n > max_school) then
		begin
			writeln('Illegal school id: ', n, ' [', c, ']');
			halt(1)
		end;
		counters[n] := counters[n] + 1;
	end;
	n := 1;
	for i := 2 to max_school do
		if counters[i] > counters[n] then
			n := i;
	for i := 1 to max_school do
		if counters[i] = counters[n] then
			writeln(i)
end.
