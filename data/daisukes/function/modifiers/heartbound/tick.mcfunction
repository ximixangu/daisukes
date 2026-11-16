scoreboard players add #now daisukes.heart 1
scoreboard players add #time daisukes.heart 1
execute if score #time daisukes.heart matches 1600 run data modify storage daisukes:heart b.r set value 14
execute if score #time daisukes.heart matches 3200 run data modify storage daisukes:heart b.r set value 17

# Cops al cor (una interaction just del tamany del bloc, que no deixa picar-lo com un bloc normal)
execute as @e[type=minecraft:interaction,tag=daisukes.heart_core] if data entity @s attack at @s positioned ~ ~0.505 ~ run function daisukes:modifiers/heartbound/strike
# Cors que ja no hi son (picats, explotats...): el seu creaking s'esmicola i l'amo queda lliure
execute as @e[type=minecraft:interaction,tag=daisukes.heart_core] at @s positioned ~ ~0.505 ~ unless block ~ ~ ~ minecraft:creaking_heart run function daisukes:modifiers/heartbound/heart_broken

execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/heartbound/player
# Algu ha pegat a un creaking: no li fa res, pero unes particules volen fins al seu cor
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] if data entity @s {HurtTime: 10s} at @s run function daisukes:modifiers/heartbound/hurt

# Cada cor batega (cada 1,5 s) si hi ha algu a prop
scoreboard players add #beat daisukes.heart 1
execute if score #beat daisukes.heart matches 30.. run function daisukes:modifiers/heartbound/beat
scoreboard players add #sec daisukes.heart 1
execute if score #sec daisukes.heart matches 20.. run function daisukes:modifiers/heartbound/second
