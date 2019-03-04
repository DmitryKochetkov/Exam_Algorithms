const N = 20;
type arr = array[1..N+1] of integer;
var
   a: arr;
   i: integer;
   key, res: integer;

function BarrierSearch(var dat: arr; key: integer): integer; //This is the Barrier Search Algorithm.
var
   i: integer;
begin
   dat[N+1] := key;
   i := 1;
   while (dat[i] <> key) do
      if i <> N+1 then i+=1;
   if i = N+1 then BarrierSearch := -1 else BarrierSearch := i;
end;

begin
   randomize;
   writeln('Array (size = ' + N + '): '); 
   i := 0;
   for i:=1 to N do begin
      a[i] := random(100);
      writeln(a[i]);
   end;
   writeln;
   write('Enter the key: '); readln(key);
   res := BarrierSearch(a, key);
   if res = -1 then write('Value not found!')
   else writeln('Position: ' + res);
end.