# Com al mob que s'acaba de morir, als seus peus. Identificador del jugador que l'ha mort (el primer cop)
# i quantes animes l'empaiten ja
execute as @a[tag=daisukes.soul_prey] unless score @s daisukes.soul_id matches 1.. store result score @s daisukes.soul_id run scoreboard players add #next daisukes.soul 1
scoreboard players operation #prey daisukes.soul = @a[tag=daisukes.soul_prey,limit=1] daisukes.soul_id
scoreboard players set #n daisukes.soul 0
execute as @e[type=minecraft:interaction,tag=daisukes.soul] if score @s daisukes.soul_id = #prey daisukes.soul run scoreboard players add #n daisukes.soul 1

# Quantes en surten (#chance1-3, a activate): tirada entre 0 i la suma de les tres (si sumen 0, una)
scoreboard players operation #total daisukes.soul = #chance1 daisukes.soul
scoreboard players operation #total daisukes.soul += #chance2 daisukes.soul
scoreboard players operation #total daisukes.soul += #chance3 daisukes.soul
execute store result score #roll daisukes.soul run random value 0..999999
execute if score #total daisukes.soul matches 1.. run scoreboard players operation #roll daisukes.soul %= #total daisukes.soul
execute unless score #total daisukes.soul matches 1.. run scoreboard players set #roll daisukes.soul -1
scoreboard players set #count daisukes.soul 1
scoreboard players operation #roll daisukes.soul -= #chance1 daisukes.soul
execute if score #roll daisukes.soul matches 0.. run scoreboard players set #count daisukes.soul 2
scoreboard players operation #roll daisukes.soul -= #chance2 daisukes.soul
execute if score #roll daisukes.soul matches 0.. run scoreboard players set #count daisukes.soul 3

# Les animes, una darrere l'altra (cada una surt 0,2 s despres) i cap a costats diferents (120 graus)
scoreboard players set #delay daisukes.soul 0
execute store result score #yaw daisukes.soul run random value -180..179
execute positioned ~ ~0.3 ~ summon minecraft:interaction run function daisukes:modifiers/soul_escape/soul/setup
execute if score #count daisukes.soul matches 2.. positioned ~ ~0.3 ~ summon minecraft:interaction run function daisukes:modifiers/soul_escape/soul/setup
execute if score #count daisukes.soul matches 3 positioned ~ ~0.3 ~ summon minecraft:interaction run function daisukes:modifiers/soul_escape/soul/setup
