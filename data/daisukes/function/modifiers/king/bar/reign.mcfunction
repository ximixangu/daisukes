# Macro {id}. Com al Rei: la barra de la cort ensenya el seu nom (el del monstre, o el que li hagin posat) i la vida
$bossbar set daisukes:king_$(id) name ["", {"text": "♚ ", "color": "gold"}, {"text": "King ", "color": "gold", "bold": true}, {"selector": "@s", "color": "gold", "bold": true}, {"text": " ♚", "color": "gold"}]
$bossbar set daisukes:king_$(id) color yellow
$execute store result bossbar daisukes:king_$(id) max run attribute @s minecraft:max_health get
