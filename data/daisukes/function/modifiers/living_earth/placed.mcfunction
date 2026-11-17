# Com al jugador que acaba de posar un bloc (l'avenc living_earth/placed; no compten els que es fan servir)
advancement revoke @s only daisukes:living_earth/placed
execute unless data storage daisukes:state {active: ["living_earth"]} run return 0
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return 0
execute unless score @s daisukes.earth matches 1.. run function daisukes:modifiers/living_earth/join
# On es exactament ho apunta l'avenc where, i es busca quan acaba el clic (l'avenc used) o, si no, al tick seguent.
# Si n'hi havia un altre sense buscar, les distancies es barregen: tots dos es busquen amb la mirada del clic
execute if entity @s[tag=daisukes.earth_placing] run tag @s add daisukes.earth_many
tag @s add daisukes.earth_placing
# Un marcador als peus guarda el numero del jugador, cap on mirava i que hi havia a cada ma
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_pend", "daisukes.earth_new"]}
tp @e[type=minecraft:marker,tag=daisukes.earth_new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[type=minecraft:marker,tag=daisukes.earth_new,limit=1] daisukes.earth = @s daisukes.earth
data modify entity @e[type=minecraft:marker,tag=daisukes.earth_new,limit=1] data.main.block set from entity @s SelectedItem.id
data modify entity @e[type=minecraft:marker,tag=daisukes.earth_new,limit=1] data.off.block set from entity @s equipment.offhand.id
tag @e[type=minecraft:marker,tag=daisukes.earth_new] remove daisukes.earth_new
