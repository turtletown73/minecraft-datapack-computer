execute as @e[tag=run_program,type=interaction] at @s on target run function computer:assembly/trigger
execute as @e[tag=run_program,type=interaction] at @s on target run function computer:reset_interact

execute if data storage computer:asm program[0] run function computer:assembly/run