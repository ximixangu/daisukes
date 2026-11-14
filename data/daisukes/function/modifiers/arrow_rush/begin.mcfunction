$data modify storage daisukes:rush p.$(id) set value {done: []}
$data modify storage daisukes:rush p.$(id).rest set from storage daisukes:rush gen
scoreboard players operation @s daisukes.rush = #t daisukes.rush
scoreboard players operation @s daisukes.rush_tm = #t daisukes.rush
# Barra de dalt, nomes per a ell: el nom es la sequencia i la barra el temps (si ja existeix, l'add falla i ja esta)
$bossbar add daisukes:rush_$(id) ""
$bossbar set daisukes:rush_$(id) players @s
$bossbar set daisukes:rush_$(id) color green
$execute store result bossbar daisukes:rush_$(id) max run scoreboard players get #t daisukes.rush
$execute store result bossbar daisukes:rush_$(id) value run scoreboard players get #t daisukes.rush
$bossbar set daisukes:rush_$(id) visible true
playsound minecraft:entity.arrow.shoot master @s ~ ~ ~ 0.4 1.6
function daisukes:modifiers/arrow_rush/next with storage daisukes:rush tmp
