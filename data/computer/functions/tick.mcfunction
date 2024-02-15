execute as @e[tag=run_program] at @s on target run function computer:assembly/trigger
execute as @e[tag=run_program] at @s on target run function computer:reset_interact

execute positioned -128 -63 49 if block ~ ~ ~ stone_button[powered=true] run function computer:assembly/stop
execute positioned -128 -63 49 if block ~ ~ ~ stone_button[powered=true] run tellraw @p {"text":"Program Stopped!","color": "#bb4444"}
execute positioned -128 -63 49 if block ~ ~ ~ stone_button[powered=true] run setblock ~ ~ ~ stone_button[powered=false,facing=south] replace

execute if data storage computer:asm program[0] run function computer:assembly/run

scoreboard players set current computerscreenx -1209
scoreboard players set current computerscreeny -620
function computer:draw_screen {"current":0}