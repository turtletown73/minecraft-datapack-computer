scoreboard players set eight computertemp 8
scoreboard players set one computertemp 1
execute store result score x computertemp run data get storage computer:asm args.0
execute store result score y computertemp run data get storage computer:asm args.1

scoreboard players operation x computertemp -= one computertemp
scoreboard players operation y computertemp -= one computertemp

scoreboard players operation y computertemp *= eight computertemp
scoreboard players operation y computertemp += x computertemp

execute store result storage computer:screen setvalue int 1 run scoreboard players get y computertemp
data modify storage computer:screen setr set from storage computer:asm args.2
data modify storage computer:screen setg set from storage computer:asm args.3
data modify storage computer:screen setb set from storage computer:asm args.4

function computer:assembly/setpixel with storage computer:screen