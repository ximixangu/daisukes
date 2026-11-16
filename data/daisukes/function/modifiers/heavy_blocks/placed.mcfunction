# Recompensa de l'avancament daisukes:modifiers/heavy_blocks/place: aquest jugador acaba de posar un bloc sense res a sota (aire, aigua, herba...).
# Es torna a poder activar. On es exactament ho apunta l'avancament daisukes:modifiers/heavy_blocks/where (la distancia per eixos des dels peus), i es
# mira al tick seguent, quan ja hi son tots els criteris. Un marcador als peus guarda el numero del jugador, cap on mirava
# i que hi havia a cada ma
advancement revoke @s only daisukes:modifiers/heavy_blocks/place
# Si en aquest mateix tick ja n'havia posat un altre, les distancies es barregen: aquests es busquen amb la mirada
execute if entity @s[tag=daisukes.heavy_once] run tag @s add daisukes.heavy_many
tag @s add daisukes.heavy_once
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.heavy_look", "daisukes.heavy_new"]}
tp @e[type=minecraft:marker,tag=daisukes.heavy_new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[type=minecraft:marker,tag=daisukes.heavy_new,limit=1] daisukes.heavy = @s daisukes.heavy
data modify entity @e[type=minecraft:marker,tag=daisukes.heavy_new,limit=1] data.main.block set from entity @s SelectedItem.id
data modify entity @e[type=minecraft:marker,tag=daisukes.heavy_new,limit=1] data.off.block set from entity @s equipment.offhand.id
tag @e[type=minecraft:marker,tag=daisukes.heavy_new] remove daisukes.heavy_new
