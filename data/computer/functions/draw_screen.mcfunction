execute store result storage computer:screen xpos float 0.1 run scoreboard players get current computerscreenx
execute store result storage computer:screen ypos float 0.1 run scoreboard players get current computerscreeny
$data modify storage computer:screen currentr set from storage computer:screen colors[$(current)].r
$data modify storage computer:screen currentg set from storage computer:screen colors[$(current)].g
$data modify storage computer:screen currentb set from storage computer:screen colors[$(current)].b
$data modify storage computer:screen current set value $(current)

function computer:draw_screen_pixel with storage computer:screen