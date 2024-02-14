execute unless score value computerbranchleft matches 0 run data remove storage computer:asm program[0]
execute unless score value computerbranchleft matches 0 run scoreboard players remove value computerbranchleft 1

execute unless score value computerbranchleft matches 0 run function computer:assembly/branchforward