import std/strutils

proc deadfish(code:string, forceModulo:bool)=
  var acc:int=0
  for i in code:
    if i == 'i':
      acc+=1
    if i == 'd':
      acc-=1
    if i == 's':
      acc=acc*acc
    if i == 'o':
      echo acc
    if acc == -1:
      acc=0
    if acc == 256 and forceModulo==false:
      acc=0
    if acc>255 and forceModulo==true:
      acc-=256

var bitmod:bool=true
while true:
  deadfish(readline(stdin),bitmod)
