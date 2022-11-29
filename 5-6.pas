3.
program stepa_8_2;
var i,n,max,min,maxi,mini,kr5:integer;
    a:array [1..20] of integer;
Begin
  min:=118;
  randomize;
  for i:=1 to 20 do
    a[i]:=random(117)-52;
  for i:=1 to 20 do begin
    if a[i]>max then begin
      max:=a[i];
      maxi:=i;
      end;
    if (a[i]<min) and (a[i]>0) then begin
      min:=a[i];
5.
program stepa_8_2;
var i,n,ni,suma,sumb:integer;
    a:array of integer;
    b:array of integer;
Begin
  writeln('Введите длину первого массива');
  readln(n);
  setlength(a,n);
  writeln('Введите элементы первого массива');
  for i:=0 to n-1 do begin
    read(a[i]);
    if a[i]>0 then suma+=a[i];
    end;
  writeln('Введите длину второго массива');
  readln(ni);
  setlength(b,ni);
  writeln('Введите элементы второго массива');
  for i:=0 to ni-1 do begin
    read(b[i]);
    if b[i]>0 then sumb+=b[i];
    end;
  if sumb>suma then begin
    for i:=0 to n-1 do 
11.
program stepa_8_2;
var i,min,mini,k:integer;
    a:array of integer;
procedure pop(var a:array of integer; i:integer); //массив, позиция
var b:integer;
begin
  for b:=i to length(a)-2 do 
    a[b]:=a[b+1];
  setlength(a,length(a)-1);
end;
procedure append_arr(var a:array of integer; i:integer; d:integer); //массив, позиция, число
var b:integer;
begin
  setlength(a,length(a)+1);
  for b:=length(a)-2 downto i do 
    a[b+1]:=a[b];
  a[i]:=d;
end;
Begin
  min:=integer.MaxValue;
  randomize;
  setlength(a,20);
  for i:=0 to 19 do begin
    a[i]:=random(20);
    if a[i] mod 2 = 0 then
      k+=1;
    write(a[i],' ');
    end;
  writeln();
  for i:=0 to length(a)-1 do
    if a[i] mod 2 = 0 then begin
    append_arr(a,i,k);
    break;
    end;
  for i:=0 to length(a)-1 do
    write(a[i],' ');
end.
