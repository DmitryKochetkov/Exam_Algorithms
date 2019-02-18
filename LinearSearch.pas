const N = 20;
type arr = array [1..N] of integer; //Change the type if you need.
var 
   a: arr;
   i: integer;
   key, res: integer; //Change the type if you need.
   
function LinearSearch(var dat: arr; key: integer): integer; // This is the Linear Search Algorithm. Change the type if you need.
var
   i: integer;
begin
   for i:=1 to N do if dat[i] = key then begin LinearSearch := i; exit; end;
   LinearSearch := -1;
end;

begin
   randomize;
   writeln('Array (size = ' + N + '): '); 
   i := 0;
   for i:=1 to N do
   begin
      a[i] := random(100);
      writeln(a[i]);
   end;
   writeln;
   write('Enter the key: '); readln(key);
   res := LinearSearch(a, key);
   if res = -1 then write('Value not found!')
   else writeln('Position: ' + res);
end.