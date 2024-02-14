summon arrow ~ ~1.5 ~ {Tags:["gunshot"]}

execute as @e[limit=1,sort=nearest,tag=gunshot] at @s store result score @s gunX1 run data get entity @s Pos[0] 1000
execute as @e[limit=1,sort=nearest,tag=gunshot] at @s store result score @s gunY1 run data get entity @s Pos[1] 1000
execute as @e[limit=1,sort=nearest,tag=gunshot] at @s store result score @s gunZ1 run data get entity @s Pos[2] 1000
execute as @e[limit=1,sort=nearest,tag=gunshot] at @s rotated as @p[scores={gunUse=1..}] run tp @s ^ ^ ^0.1
execute as @e[limit=1,sort=nearest,tag=gunshot] at @s store result score @s gunX2 run data get entity @s Pos[0] 1000
execute as @e[limit=1,sort=nearest,tag=gunshot] at @s store result score @s gunY2 run data get entity @s Pos[1] 1000
execute as @e[limit=1,sort=nearest,tag=gunshot] at @s store result score @s gunZ2 run data get entity @s Pos[2] 1000

execute as @e[limit=1,sort=nearest,tag=gunshot] run scoreboard players operation @s gunX2 -= @s gunX1
execute as @e[limit=1,sort=nearest,tag=gunshot] run scoreboard players operation @s gunY2 -= @s gunY1
execute as @e[limit=1,sort=nearest,tag=gunshot] run scoreboard players operation @s gunZ2 -= @s gunZ1

execute as @e[limit=1,sort=nearest,tag=gunshot] store result entity @s Motion[0] double 0.015 run scoreboard players get @s gunX2
execute as @e[limit=1,sort=nearest,tag=gunshot] store result entity @s Motion[1] double 0.015 run scoreboard players get @s gunY2
execute as @e[limit=1,sort=nearest,tag=gunshot] store result entity @s Motion[2] double 0.015 run scoreboard players get @s gunZ2