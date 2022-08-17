program symbol_type_case_of;
var
	c: char;
begin
	read(c);
	write('The symbol is ');
	case c of
		'a'..'z', 'A'..'Z':
			writeln('a latin letter');
		'0'..'9':
			writeln('a digit');
		'+', '-', '*', '/':
			writeln('an arithmetic operation symbol');
	else
		writeln('smth strange')
	end
end.
