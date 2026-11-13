title @a times 5t 3s 2s
title @a subtitle {"text": "Daisuke's", "color": "dark_red"}
title @a title {"text": "Challenge Mode", "color": "red"}

# Els scoreboards es creen abans de la tria (si no, la primera tirada d'un món nou fallava)
scoreboard objectives add daisukes.timer dummy
scoreboard objectives add daisukes.engine dummy
scoreboard objectives add daisukes.math dummy

# Bossbar del compte enrere (amagada fins als ultims 5 segons)
function daisukes:engine/countdown/setup

execute if data storage daisukes:state active[0] run function daisukes:engine/deactivate_execute

data modify storage daisukes:registry modifiers set value []
data remove storage daisukes:registry incompatible
data remove storage daisukes:registry conflicts
data remove storage daisukes:temp pool

function #daisukes:register

# Converteix les incompatibilitats declarades als register en una taula reciproca (A no amb B => B no amb A)
function daisukes:engine/incompat/build

data merge storage daisukes:config {count: 1}

function daisukes:engine/select_modifiers

scoreboard players set #engine_active daisukes.engine 1
scoreboard players set #timer daisukes.timer 0
scoreboard players set #timer_threshold daisukes.timer 200

function daisukes:engine/activate_execute