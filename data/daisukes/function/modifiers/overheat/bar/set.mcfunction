# Macro {id}. Com a jugador: la barra canvia d'aspecte (#want, veure player)
#   1 fresc (blanca) | 2 calent (groga) | 3 molt calent (vermella) | 4 crema (vermella, "Overheated") | 5 es refreda (blava)
scoreboard players operation @s daisukes.heat_v = #want daisukes.heat
$bossbar set daisukes:heat_$(id) visible true

$execute if score #want daisukes.heat matches 1 run bossbar set daisukes:heat_$(id) color white
$execute if score #want daisukes.heat matches 2 run bossbar set daisukes:heat_$(id) color yellow
$execute if score #want daisukes.heat matches 3..4 run bossbar set daisukes:heat_$(id) color red
$execute if score #want daisukes.heat matches 5 run bossbar set daisukes:heat_$(id) color blue

$execute if score #want daisukes.heat matches 1 run bossbar set daisukes:heat_$(id) name {"text": "Heat", "color": "#FFE3CC"}
$execute if score #want daisukes.heat matches 2 run bossbar set daisukes:heat_$(id) name {"text": "Heat", "color": "#FFB347"}
$execute if score #want daisukes.heat matches 3 run bossbar set daisukes:heat_$(id) name {"text": "Heat", "color": "#FF7A4D"}
$execute if score #want daisukes.heat matches 4 run function daisukes:modifiers/overheat/bar/flame {id: $(id)}
$execute if score #want daisukes.heat matches 5 run bossbar set daisukes:heat_$(id) name {"text": "Cooling down", "color": "#8FDFFF"}
