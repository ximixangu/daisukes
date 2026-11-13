# Com el jugador i a la seva posició. Intenta fer aparèixer un esquelet a prop seu (a qualsevol dimensió).
scoreboard players set @s daisukes.bone_voyage 0

# Si ja n'hi ha prou al voltant, no en surt cap més
execute store result score #near daisukes.bone_voyage if entity @e[type=minecraft:skeleton,tag=daisukes.voyage_skeleton,distance=..48]
execute unless score #near daisukes.bone_voyage < #max daisukes.bone_voyage run return 0

# Fins a 6 temptatives per trobar un lloc vàlid (a les coves o al Nether moltes fallen)
scoreboard players set #tries daisukes.bone_voyage 6
scoreboard players set #spawned daisukes.bone_voyage 0
function daisukes:modifiers/bone_voyage/attempt
