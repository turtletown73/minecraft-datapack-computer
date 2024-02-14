#set values
data modify storage computer:asm current set from storage computer:asm program[0].cmd
data modify storage computer:asm args set from storage computer:asm program[0].args

#run line
execute if data storage computer:asm {current:"halt"} run return 0
execute if data storage computer:asm {current:"setreg"} run function computer:assembly/cmds/setreg with storage computer:asm
execute if data storage computer:asm {current:"print"} run tellraw @a [{"text": "[PRINT] ","color": "#888888"},{"storage":"computer:asm","nbt":"args.0","color": "#bbbbbb"}]
execute if data storage computer:asm {current:"printreg"} run function computer:assembly/cmds/printreg
execute if data storage computer:asm {current:"addreg"} run function computer:assembly/cmds/addreg
execute if data storage computer:asm {current:"subreg"} run function computer:assembly/cmds/subreg
execute if data storage computer:asm {current:"multreg"} run function computer:assembly/cmds/multreg
execute if data storage computer:asm {current:"divreg"} run function computer:assembly/cmds/divreg
execute if data storage computer:asm {current:"absreg"} run function computer:assembly/cmds/absreg
execute if data storage computer:asm {current:"branch"} run function computer:assembly/cmds/branch

#next line
execute unless data storage computer:asm {current:"branch"} run data remove storage computer:asm program[0]