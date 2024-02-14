#if valid, store program
execute if data entity @s SelectedItem.tag.asm run data modify storage computer:asm program set from entity @s SelectedItem.tag.asm
execute if data entity @s SelectedItem.tag.asm run data modify storage computer:asm copy set from entity @s SelectedItem.tag.asm

#if not valid, alert user
execute unless data entity @s SelectedItem.tag.asm run tellraw @s {"text": "Invalid Program!","color": "#bb4444"}