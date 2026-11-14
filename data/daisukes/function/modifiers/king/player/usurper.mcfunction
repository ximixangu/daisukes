# Macro {id, s}: cort i segons de l'interregne. Com a jugador que ha mort el Rei de la cort #cid, on es: la corona
# li vola al cap, es "Rei" fins que s'acabi l'interregne i te Forca i Velocitat per acabar amb la cort indefensa
tag @s add daisukes.king_wearer
scoreboard players operation @s daisukes.king_id = #cid daisukes.king_id
$effect give @s minecraft:strength $(s) 0
$effect give @s minecraft:speed $(s) 0
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.3
$bossbar set daisukes:king_$(id) name ["", {"text": "♚ ", "color": "gold"}, {"text": "King is dead, for now", "color": "white", "bold": true}]
$bossbar set daisukes:king_$(id) color white
$execute store result bossbar daisukes:king_$(id) max run scoreboard players get #interregnum daisukes.king
