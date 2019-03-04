const N = 20;
type arr = array [1..N] of integer;
var 
   a: arr;
   i, j: integer;
   key, res: integer; //Change the type if you need.
   
procedure Sort(var dat: arr);
var i, j, k: integer;
begin
    for i := 1 to N-1 do
        for j := 1 to N-i do
            if dat[j] > dat[j+1] then begin
                k := dat[j];
                dat[j] := dat[j+1];
                dat[j+1] := k;
            end;
end;
   
function BinarySearch(dat: arr; key: integer): integer; // This is the Binary Search Algorithm. Change the type for "key" if you need.
   var mid, left, right: integer;
   begin
      left := 1;
      right := N;
      
      while left <= right do
      begin
         mid := left + (right - left) div 2;
         if key < dat[mid] then right := mid - 1
         else
            if key > dat[mid] then left := mid + 1
            else begin BinarySearch := mid; exit; end;
      end;
      BinarySearch := -1;
   end;

begin
   randomize;
   writeln('Array (size = ' + N + '): '); 
   i := 0;
   for i:=1 to N do
      a[i] := random(100);
   Sort(a);
   for i:=1 to N do
      writeln(a[i]);
   writeln;
   write('Enter the key: '); readln(key);
   res := BinarySearch(a, key);
   if res = -1 then write('Value not found!')
   else writeln('Position: ' + res);
end.