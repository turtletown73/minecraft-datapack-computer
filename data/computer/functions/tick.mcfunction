execute as @e[tag=run_program] at @s on target run function computer:assembly/trigger
execute as @e[tag=run_program] at @s on target run function computer:reset_interact

execute if data storage computer:asm program[0] run function computer:assembly/run

scoreboard players set current computerscreenx -1209
scoreboard players set current computerscreeny -620
function computer:draw_screen {"current":0}