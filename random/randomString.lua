local c={}local d={}
for i=48,57 do table.insert(d,string.char(i))end
for i=65,90 do table.insert(d,string.char(i))end
for i=97,122 do table.insert(d,string.char(i))end
function c.randomString(_a)return(_a~=nil and _a>0)
and c.randomString(_a-1)..d[Random.new():NextInteger(1,#d)]
or""end;return c
