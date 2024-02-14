data modify storage computer:asm currentarg set from storage computer:asm args.0
function computer:assembly/getregister with storage computer:asm
execute store result score one computertemp run data get storage computer:asm currentreg
data modify storage computer:asm currentarg set from storage computer:asm args.1
function computer:assembly/getregister with storage computer:asm
execute store result score two computertemp run data get storage computer:asm currentreg
data modify storage computer:asm currentarg set from storage computer:asm args.2
execute store result storage computer:asm currentvalue int 1 run scoreboard players operation one computertemp *= two computertemp
function computer:assembly/setregister with storage computer:asm