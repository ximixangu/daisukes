# Ha mort el drac de l'End? Victoria i s'atura el repte: aquest tick ja no fa res mes (ni canvis ni modificadors)
function daisukes:victory/watch
execute unless score #engine_active daisukes.engine matches 1 run return 0

# Presentacio pendent (acaba de carregar el mon, /reload o /function daisukes:reset): surt ara
execute if score #intro daisukes.engine matches 1 run function daisukes:engine/intro

scoreboard players add #timer daisukes.timer 1

# Compte enrere dels ultims 5 segons abans del canvi (bossbar + sons)
function daisukes:engine/countdown/tick

execute if score #timer daisukes.timer >= #timer_threshold daisukes.timer run function daisukes:engine/next

# Progressio: augment de modificadors per temps i per entrar al Nether / End
function daisukes:engine/progress/tick

function daisukes:engine/tick_execute
execute if data storage daisukes:temp display_texts[0] run title @a actionbar {"nbt": "display_texts[]", "storage": "daisukes:temp", "separator": {"text": " + ", "color": "white", "bold": false}, "interpret": true}
