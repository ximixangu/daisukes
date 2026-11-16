# Posa en marxa el repte amb la presentacio (/function daisukes:start la primera vegada, o daisukes:reset).
# Quan hi hagi algu connectat surt el titol Challenge Mode (engine/intro), compte enrere de 5 s i primer modificador.
# El primer canvi arriba quan el titol ja ha marxat (105 ticks) i s'ha acabat el compte enrere (100 ticks)
function daisukes:engine/progress/recalc

# Les fites aconseguides abans de comencar no compten (vara de blaze, tracte amb un piglin i fortalesa)
advancement revoke @a only daisukes:progress/blaze_rod
advancement revoke @a only daisukes:progress/piglin_trade
advancement revoke @a only daisukes:progress/stronghold

scoreboard players set #engine_active daisukes.engine 1
scoreboard players set #intro daisukes.engine 1
data modify storage daisukes:temp countdown_label set value "Challenge starts in "
scoreboard players operation #timer daisukes.timer = #timer_threshold daisukes.timer
scoreboard players remove #timer daisukes.timer 206
