# Ha mort el drac de l'End? Victoria i s'atura el repte: aquest tick ja no fa res mes (ni canvis ni modificadors)
function daisukes:victory/watch
execute unless score #engine_active daisukes.engine matches 1 run return 0

# Ha mort algun jugador? Derrota i s'atura el repte (defeat/start), si al menu morir acaba el repte (#death_ends).
# Les morts es tornen a 0 cada tick (core/tick)
execute if score #death_ends daisukes.config matches 1 if entity @a[scores={daisukes.deaths=1..}] run function daisukes:defeat/start
execute unless score #engine_active daisukes.engine matches 1 run return 0

# Presentacio pendent (Start al menu, /function daisukes:start o daisukes:reset): surt ara
execute if score #intro daisukes.engine matches 1 run function daisukes:engine/intro

scoreboard players add #timer daisukes.timer 1

# Compte enrere dels ultims 5 segons abans del canvi (bossbar + sons)
function daisukes:engine/countdown/tick

execute if score #timer daisukes.timer >= #timer_threshold daisukes.timer run function daisukes:engine/next

# Progressio: augment de modificadors per temps i per entrar al Nether / End
function daisukes:engine/progress/tick

function daisukes:engine/tick_execute
execute if data storage daisukes:temp display_texts[0] run title @a actionbar {"nbt": "display_texts[]", "storage": "daisukes:temp", "separator": {"text": " + ", "color": "white", "bold": false}, "interpret": true}
