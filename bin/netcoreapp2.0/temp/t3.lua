local d=string.byte;local i=string.char;local c=string.sub;local b=table.concat;local V=math.ldexp;local H=getfenv or function()return _ENV end;local l=setmetatable;local u=select;local f=unpack;local h=tonumber;local function s(d)local e,o,t="","",{}local a=256;local n={}for l=0,a-1 do n[l]=i(l)end;local l=1;local function r()local e=h(c(d,l,l),36)l=l+1;local o=h(c(d,l,l+e-1),36)l=l+e;return o end;e=i(r())t[1]=e;while l<#d do local l=r()if n[l]then o=n[l]else o=e..c(e,1,1)end;n[a]=e..c(o,1,1)t[#t+1],e,a=o,o,a+1 end;return table.concat(t)end;local r=s('21V21Z27524G22725325426H22727524K22F27926G22F27524H22F27I26K27I21Z24H27C21Z26M27R27527V21X27V21Z21U27V21J21H21A21521F21Z22927V1B21E21222V182111X21E21G21021221F21421H22V21121Q22V1N21Q212215');local n=bit and bit.bxor or function(l,e)local o,n=1,0
while l>0 and e>0 do
local c,a=l%2,e%2
if c~=a then n=n+o end
l,e,o=(l-c)/2,(e-a)/2,o*2
end
if l<e then l=e end
while l>0 do
local e=l%2
if e>0 then n=n+o end
l,o=(l-e)/2,o*2
end
return n
end
local function e(e,l,o)if o then
local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else
local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local a,o,c,e=d(r,l,l+3);a=n(a,71)o=n(o,71)c=n(c,71)e=n(e,71)l=l+4;return(e*16777216)+(c*65536)+(o*256)+a;end;local function t()local e=n(d(r,l,l),71);l=l+1;return e;end;local function h()local n=o();local l=o();local c=1;local n=(e(l,1,20)*(2^32))+n;local o=e(l,21,31);local l=((-1)^e(l,32));if(o==0)then
if(n==0)then
return l*0;else
o=1;c=0;end;elseif(o==2047)then
return(n==0)and(l*(1/0))or(l*(0/0));end;return V(l,o-1023)*(c+(n/(2^52)));end;local a=o;local function s(e)local o;if(not e)then
e=a();if(e==0)then
return'';end;end;o=c(r,l,l+e-1);l=l+e;local e={}for l=1,#o do
e[l]=i(n(d(c(o,l,l)),71))end
return b(e);end;local l=o;local function V(...)return{...},u('#',...)end
local function i()local d={0,0,0,0};local r={};local l={};local a={d,nil,r,nil,l};for a=1,o()do
local c=n(o(),230);local o=n(o(),172);local n=e(c,1,2);local l=e(o,1,11);local l={l,e(c,3,11),nil,nil,o};if(n==0)then l[3]=e(c,12,20);l[5]=e(c,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(c,21,29);end;d[a]=l;end;for l=1,o()do r[l-1]=i();end;a[4]=t();local l=o()local o={0,0};for n=1,l do
local e=t();local l;if(e==1)then l=(t()~=0);elseif(e==3)then l=h();elseif(e==0)then l=s();end;o[n]=l;end;a[2]=o
return a;end;local function h(l,e,a)local e=l[1];local o=l[2];local c=l[3];local l=l[4];return function(...)local h=e;local n=o;local e=c;local o=l;local l=V
local c=1;local t=-1;local i={};local d={...};local r=u('#',...)-1;local l={};local e={};for l=0,r do
if(l>=o)then
i[l-o]=d[l+1];else
e[l]=d[l+1];end;end;local l=r-o+1
local l;local o;while true do
l=h[c];o=l[1];if o<=3 then if o<=1 then if o>0 then local o=l[2];local c={};local n=0;local l=o+l[3]-1;for l=o+1,l do n=n+1;c[n]=e[l];end;e[o](f(c,1,l-o));t=o;else e[l[2]]=n[l[3]];end;elseif o>2 then e[l[2]]=n[l[3]];else e[l[2]]=a[n[l[3]]];end;elseif o<=5 then if o>4 then do return end;else do return end;end;elseif o>6 then local o=l[2];local c={};local n=0;local l=o+l[3]-1;for l=o+1,l do n=n+1;c[n]=e[l];end;e[o](f(c,1,l-o));t=o;else e[l[2]]=a[n[l[3]]];end;c=c+1;end;end;end;return h(i(),{},H())();