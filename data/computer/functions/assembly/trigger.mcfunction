#if valid, store program
execute if data entity @s SelectedItem.tag.asm run data modify storage computer:asm program set from entity @s SelectedItem.tag.asm
execute if data entity @s SelectedItem.tag.asm run data modify storage computer:asm copy set from entity @s SelectedItem.tag.asm
data modify storage computer:screen colors set value [{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0},{r: 0, g: 0, b: 0}]

#if not valid, alert user
execute unless data entity @s SelectedItem.tag.asm run tellraw @s {"text": "Invalid Program!","color": "#bb4444"}