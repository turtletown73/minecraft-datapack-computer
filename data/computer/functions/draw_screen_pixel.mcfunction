$particle dust $(currentr) $(currentg) $(currentb) 1 $(xpos) $(ypos) 48.5 0 0 0 0 5 force @a

execute store result score current2 computerscreenx run data get storage computer:screen xpos 10
execute store result score current2 computerscreeny run data get storage computer:screen ypos 10

$scoreboard players set current computercurrent $(current)
scoreboard players add current computercurrent 1
execute store result storage computer:screen current int 1 run scoreboard players get current computercurrent

execute store result score current computerscreenx run data get storage computer:screen xpos 10
execute unless score current2 computerscreenx matches -1185.. run scoreboard players add current computerscreenx 4
execute if score current2 computerscreenx matches -1185.. run scoreboard players set current computerscreenx -1209
execute if score current2 computerscreenx matches -1185.. store result score current computerscreeny run data get storage computer:screen ypos 10
execute if score current2 computerscreenx matches -1185.. run scoreboard players add current computerscreeny 4

execute if score current2 computerscreenx matches -1185.. if score current2 computerscreeny matches -599.. run return 0
function computer:draw_screen with storage computer:screen