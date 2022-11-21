program user_defined_types;
type
	latin_caps = 'A'..'Z';

	rainbow_colors = 
		(red, orange, yellow, green, blue, indigo, violet);
	
	digit10 = 0..9;
var
	d: digit10;
	letter: latin_caps;
	color: rainbow_colors;
begin
	d := 7;
	letter := 'X';
	color := indigo;
	writeln(d);
	writeln(letter);
	writeln(color)
end.
