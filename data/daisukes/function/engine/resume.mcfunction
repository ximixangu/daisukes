# Continua una partida ja comencada tal com era, SENSE presentacio ni tirada nova: els mateixos modificadors
# i el mateix temps fins al proxim canvi (sense ningu connectat el temps no avanca).
# Ho fan servir core/load (mon tornat a obrir o /reload a mitja partida) i start despres de debug/stop
scoreboard players set #engine_active daisukes.engine 1
scoreboard players set #intro daisukes.engine 0

# Si el compte enrere ja anava, la bossbar torna a sortir (debug/stop l'amaga; el numero no ha canviat)
scoreboard players operation #left daisukes.timer = #timer_threshold daisukes.timer
scoreboard players operation #left daisukes.timer -= #timer daisukes.timer
execute if score #left daisukes.timer matches 1..100 run bossbar set daisukes:countdown visible true
