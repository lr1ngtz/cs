program filter_ok;
var
	c: char;
begin
	while not eof do
	begin
		read(c);
		{ #10 - new line symbol }
		if c = #10 then
			writeln('Ok')
	end;
	writeln('Good bye')
end.
