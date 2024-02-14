data modify storage computer:asm currentarg set from storage computer:asm args.0
function computer:assembly/getregister with storage computer:asm
tellraw @a [{"text": "[PRINT] ","color": "#888888"},{"storage":"computer:asm","nbt":"currentreg","color": "#bbbbbb"}]