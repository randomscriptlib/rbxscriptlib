local bca={}
local cca,dca,_da,ada,bda,cda,dda,__b,a_b,b_b,c_b=table.unpack or unpack,table.concat,string.byte,string.char,string.rep,string.sub,string.format,math.floor,math.ceil,math.min,math.max;shared.unpack=cca;local d_b,_ab,aab,bab,cab,dab,_bb,abb;local function bbb(cac,dac)
return(cac*2 ^dac)%4294967296 end;local function cbb(cac,dac)cac=cac%4294967296 /2 ^dac;return
cac-cac%1 end;local function dbb(cac,dac)
cac=cac%4294967296 *2 ^dac;local _bc=cac%4294967296
return _bc+ (cac-_bc)/4294967296 end;local function _cb(cac,dac)cac=cac%4294967296 /
2 ^dac;local _bc=cac%1
return _bc*4294967296 + (cac-_bc)end;local acb={}
for idx=0,65535 do
local cac=idx%256;local dac=(idx-cac)/256;local _bc=0;local abc=1;while cac*dac~=0 do local bbc=cac%2;local cbc=dac%2;_bc=
_bc+bbc*cbc*abc;cac=(cac-bbc)/2
dac=(dac-cbc)/2;abc=abc*2 end
acb[idx]=_bc end
local function bcb(cac,dac,_bc)local abc=cac%4294967296;local bbc=dac%4294967296;local cbc=abc%256
local dbc=bbc%256;local _cc=acb[cbc+dbc*256]cac=abc-cbc;dac=(bbc-dbc)/256;cbc=
cac%65536;dbc=dac%256
_cc=_cc+acb[cbc+dbc]*256;cac=(cac-cbc)/256;dac=(dac-dbc)/256
cbc=cac%65536 +dac%256;_cc=_cc+acb[cbc]*65536;_cc=_cc+
acb[(cac+dac-cbc)/256]*16777216;if _bc then
_cc=abc+bbc-_bc*_cc end;return _cc end;local function ccb(cac,dac)return bcb(cac,dac)end
local function dcb(cac,dac)return bcb(cac,dac,1)end
local function _db(cac,dac,_bc)if _bc then dac=bcb(dac,_bc,2)end;return bcb(cac,dac,2)end
local function adb(cac)return dda("%08x",cac%4294967296)end;local bdb,cdb,ddb,__c={},{},{},{}local a_c={[224]={},[256]=__c}
local b_c,c_c={[384]={},[512]=ddb},{[384]={},[512]=__c}local d_c={}
local function _ac(cac,dac,_bc,abc,bbc,cbc)
for pos=bbc,cbc+bbc-1,64 do for j=1,16 do pos=pos+4;local cdc,ddc,__d,a_d=_da(_bc,pos-3,pos)
abc[j]=( (
cdc*256 +ddc)*256 +__d)*256 +a_d end
for j=17,64 do
local cdc,ddc=abc[j-15],abc[j-2]
abc[j]=
_db(_cb(cdc,7),dbb(cdc,14),cbb(cdc,3))+
_db(dbb(ddc,15),dbb(ddc,13),cbb(ddc,10))+abc[j-7]+abc[j-16]end
local dbc,_cc,acc,bcc,ccc,dcc,_dc,adc,bdc=cac[1],cac[2],cac[3],cac[4],cac[5],cac[6],cac[7],cac[8]
for j=1,64 do
bdc=
_db(_cb(ccc,6),_cb(ccc,11),dbb(ccc,7))+ccb(ccc,dcc)+ccb(-1 -ccc,_dc)+adc+dac[j]+abc[j]adc=_dc;_dc=dcc;dcc=ccc;ccc=bdc+bcc;bcc=acc;acc=_cc;_cc=dbc
dbc=bdc+ccb(bcc,acc)+
ccb(dbc,_db(bcc,acc))+_db(_cb(dbc,2),_cb(dbc,13),dbb(dbc,10))end
cac[1],cac[2],cac[3],cac[4]=(dbc+cac[1])%4294967296,(_cc+cac[2])%4294967296,(
acc+cac[3])%4294967296,(bcc+cac[4])%4294967296
cac[5],cac[6],cac[7],cac[8]=(ccc+cac[5])%4294967296,(dcc+cac[6])%4294967296,(
_dc+cac[7])%4294967296,(adc+cac[8])%4294967296 end end
local function aac(cac,dac,_bc,abc,bbc,cbc,dbc,_cc)
for pos=dbc,_cc+dbc-1,128 do for j=1,32 do pos=pos+4;local abd,bbd,cbd,dbd=_da(bbc,pos-3,pos)
cbc[j]=( (
abd*256 +bbd)*256 +cbd)*256 +dbd end;local acc,bcc
for jj=17 *2,80 *2,2 do local abd,bbd,cbd,dbd=cbc[jj-30],cbc[
jj-31],cbc[jj-4],cbc[jj-5]
acc=
_db(cbb(abd,1)+
bbb(bbd,31),cbb(abd,8)+bbb(bbd,24),cbb(abd,7)+bbb(bbd,25))+_db(cbb(cbd,19)+bbb(dbd,13),bbb(cbd,3)+cbb(dbd,29),cbb(cbd,6)+
bbb(dbd,26))+cbc[jj-14]+cbc[jj-32]bcc=acc%4294967296
cbc[jj-1]=
_db(cbb(bbd,1)+bbb(abd,31),cbb(bbd,8)+
bbb(abd,24),cbb(bbd,7))+_db(cbb(dbd,19)+bbb(cbd,13),
bbb(dbd,3)+cbb(cbd,29),cbb(dbd,6))+cbc[jj-15]+cbc[jj-33]+ (acc-bcc)/4294967296;cbc[jj]=bcc end
local ccc,dcc,_dc,adc,bdc,cdc,ddc,__d,a_d=cac[1],cac[2],cac[3],cac[4],cac[5],cac[6],cac[7],cac[8]
local b_d,c_d,d_d,_ad,aad,bad,cad,dad,_bd=dac[1],dac[2],dac[3],dac[4],dac[5],dac[6],dac[7],dac[8]
for j=1,80 do local abd=2 *j
acc=
_db(cbb(bdc,14)+bbb(aad,18),cbb(bdc,18)+bbb(aad,14),
bbb(bdc,23)+cbb(aad,9))+ccb(bdc,cdc)+ccb(-1 -bdc,ddc)+__d+_bc[j]+cbc[abd]a_d=acc%4294967296
_bd=
_db(cbb(aad,14)+bbb(bdc,18),cbb(aad,18)+
bbb(bdc,14),bbb(aad,23)+cbb(bdc,9))+ccb(aad,bad)+ccb(-1 -aad,cad)+dad+abc[j]+cbc[abd-1]+ (acc-a_d)/4294967296;__d=ddc;dad=cad;ddc=cdc;cad=bad;cdc=bdc;bad=aad;acc=a_d+adc
bdc=acc%4294967296;aad=_bd+_ad+ (acc-bdc)/4294967296;adc=_dc;_ad=d_d
_dc=dcc;d_d=c_d;dcc=ccc;c_d=b_d
acc=
a_d+ccb(adc,_dc)+ccb(dcc,_db(adc,_dc))+_db(cbb(dcc,28)+bbb(c_d,4),bbb(dcc,30)+cbb(c_d,2),bbb(dcc,25)+
cbb(c_d,7))ccc=acc%4294967296
b_d=
_bd+
(ccb(_ad,d_d)+ccb(c_d,_db(_ad,d_d)))+_db(cbb(c_d,28)+bbb(dcc,4),bbb(c_d,30)+cbb(dcc,2),
bbb(c_d,25)+cbb(dcc,7))+ (acc-ccc)/4294967296 end;acc=cac[1]+ccc;bcc=acc%4294967296
cac[1],dac[1]=bcc,(dac[1]+b_d+ (acc-bcc)/
4294967296)%4294967296;acc=cac[2]+dcc;bcc=acc%4294967296
cac[2],dac[2]=bcc,(dac[2]+c_d+ (acc-bcc)/
4294967296)%4294967296;acc=cac[3]+_dc;bcc=acc%4294967296
cac[3],dac[3]=bcc,(dac[3]+d_d+ (acc-bcc)/
4294967296)%4294967296;acc=cac[4]+adc;bcc=acc%4294967296
cac[4],dac[4]=bcc,(dac[4]+_ad+ (acc-bcc)/
4294967296)%4294967296;acc=cac[5]+bdc;bcc=acc%4294967296
cac[5],dac[5]=bcc,(dac[5]+aad+ (acc-bcc)/
4294967296)%4294967296;acc=cac[6]+cdc;bcc=acc%4294967296
cac[6],dac[6]=bcc,(dac[6]+bad+ (acc-bcc)/
4294967296)%4294967296;acc=cac[7]+ddc;bcc=acc%4294967296
cac[7],dac[7]=bcc,(dac[7]+cad+ (acc-bcc)/
4294967296)%4294967296;acc=cac[8]+__d;bcc=acc%4294967296
cac[8],dac[8]=bcc,(dac[8]+dad+ (acc-bcc)/
4294967296)%4294967296 end end
do
local function cac(acc,bcc,ccc,dcc)local _dc={}local adc=0;local bdc=0.0;local cdc=1.0
for j=1,dcc do local ddc=0
for k=c_b(1,j+1 -#bcc),b_b(j,#acc)do ddc=ddc+
acc[k]*bcc[j+1 -k]end;adc=adc+ddc*ccc;local __d=adc%16777216;_dc[j]=__d
adc=__b(adc/16777216)bdc=bdc+__d*cdc;cdc=cdc*2 ^24 end;return _dc,bdc end;local dac,_bc,abc,bbc=0,{4,1,2,-2,2},4,{1}local cbc,dbc,_cc=__c,ddb,0
repeat
abc=abc+_bc[abc%6]local acc=1
repeat acc=acc+_bc[acc%6]
if acc*acc>abc then dac=dac+1
local bcc=abc^ (1 /3)local ccc=cac({__b(bcc*2 ^40)},bbc,1,2)local dcc,_dc=cac(ccc,cac(ccc,ccc,1,4),
-1,4)local adc=ccc[2]%65536 *65536 +
__b(ccc[1]/256)
local bdc=ccc[1]%256 *16777216 +__b(_dc* (
2 ^-56 /3)*bcc/abc)cdb[dac],bdb[dac]=adc,bdc
if dac<17 then bcc=abc^ (1 /2)
ccc=cac({__b(bcc*2 ^40)},bbc,1,2)dcc,_dc=cac(ccc,ccc,-1,2)adc=ccc[2]%65536 *65536 +
__b(ccc[1]/256)bdc=ccc[1]%256 *16777216 +__b(
_dc*2 ^-17 /bcc)
a_c[224][dac+_cc]=bdc;cbc[dac+_cc],dbc[dac+_cc]=adc,bdc;if dac==8 then
cbc,dbc,_cc=c_c[384],b_c[384],-8 end end;break end until abc%acc==0 until dac>79 end
for width=224,256,32 do local cac,dac={},{}for j=1,8 do cac[j]=_db(ddb[j],0xa5a5a5a5)
dac[j]=_db(__c[j],0xa5a5a5a5)end
aac(cac,dac,bdb,cdb,"SHA-512/"..tonumber(width).."\128"..
bda("\0",115).."\88",d_c,0,128)b_c[width]=cac;c_c[width]=dac end
local function bac(cac,dac)
local _bc,abc,bbc,cbc=0,"",{cca(b_c[cac])},{cca(c_c[cac])}
local function dbc(_cc)
if _cc then
if abc then _bc=_bc+#_cc;local acc=0;if abc~=""and#abc+#_cc>=128 then
acc=128 -#abc
aac(bbc,cbc,bdb,cdb,abc..cda(_cc,1,acc),d_c,0,128)abc=""end
local bcc=#_cc-acc;local ccc=bcc%128;aac(bbc,cbc,bdb,cdb,_cc,d_c,acc,bcc-ccc)abc=
abc..cda(_cc,#_cc+1 -ccc)return dbc else
error("Adding more chunks is not allowed after asking for final result",2)end else
if abc then
local acc={abc,"\128",bda("\0",(-17 -_bc)%128 +9)}abc=nil;_bc=_bc* (8 /256 ^7)for j=4,10 do _bc=_bc%1 *256
acc[j]=ada(__b(_bc))end;acc=dca(acc)
aac(bbc,cbc,bdb,cdb,acc,d_c,0,#acc)local bcc=a_b(cac/64)for j=1,bcc do
bbc[j]=adb(cbc[j])..adb(bbc[j])end;cbc=nil
bbc=dca(bbc,"",1,bcc):sub(1,cac/4)end;return bbc end end;if dac then return dbc(dac)()else return dbc end end
function bca.hmac512(cac,dac)return bac(512,cac..dac..cac)end;return bca
