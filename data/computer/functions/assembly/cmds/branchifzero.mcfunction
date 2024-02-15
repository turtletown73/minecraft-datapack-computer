execute store result score value computerbranchleft run data get storage computer:asm args.0
data modify storage computer:asm currentarg set from storage computer:asm args.1
function computer:assembly/getregister with storage computer:asm

execute if data storage computer:asm {currentreg:0} run data modify storage computer:asm program set from storage computer:asm copy
execute if data storage computer:asm {currentreg:0} run function computer:assembly/branchforward