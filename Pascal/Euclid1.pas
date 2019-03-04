var
   x1, x2: integer;
   
function Euclid(a, b: integer): integer;
begin
   while a<>b do
   if a>b then a:=a-b else b:=b-a;
   Euclid := a;
end;

begin
   write('Enter 2 natural numbers: ');
   read(x1, x2);
   if (x1 <= 0) or (x2 <= 0) then write('Non-natural numbers are not allowed.') 
   else write(Euclid(x1, x2));
end.