execute as @a at @s rotated as @s if score @s gunUse matches 1.. run function gun:shoot
execute as @a if score @s gunUse matches 1.. run scoreboard players set @s gunUse 0

execute as @e[tag=gunshot] at @s run particle minecraft:dust 0 1.0 0 1.5 ~ ~ ~ 0.1 0.1 0.1 1 5 normal
execute as @e[tag=gunshot,nbt={inGround:1b}] at @s run fill ~-0.1 ~-0.1 ~-0.1 ~0.1 ~0.1 ~0.1 lime_wool replace #wool
execute as @e[tag=gunshot,nbt={inGround:1b}] run kill @s