var
   i, j, k, n: integer;
   s: string;
   a: array[1..8] of integer;
   
function sum(s: string): integer;
var
   res, i, n, x, e: integer;
begin
   res := 0;
   n := 1;
   for i:=1 to length(s) do begin
      case s[i] of
      '+', '-': begin
         val(copy(s, n, i-n), x, e);
         res := res + x;
         n := i;
      end;
      end;
   end;
   sum := res;
end;

begin
   s := '1 2 3 4 5 6 7 8 9';
   for i:=0 to 6560 do begin
      k := i;
      for j:=1 to 8 do a[j] := 0;
      n := 8;
      while (k > 0) do begin
         a[n] := k mod 3;
         n := n-1;
         k := k div 3;
      end;
      n:=0;
      for j:=1 to 8 do case a[j] of
      0: s[2*j] := '+';
      1: s[2*j] := '-';
      end;
      k:=1;
      while (k < length(s)) do begin if s[k] = ' ' then begin delete(s, k, 1); end; k:= k+1; end;
      if (sum(s + '+') = 100) then writeln(s);
      s := '1 2 3 4 5 6 7 8 9';
   end;
end.