# Cada 5 s, una pocio (persistent, d'aigua) cau al costat de cada jugador
scoreboard players add #timer daisukes.agua 1
execute if score #timer daisukes.agua matches 100.. run scoreboard players set #timer daisukes.agua 0
execute if score #timer daisukes.agua matches 0 as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/agua/throw

# On s'ha trencat (el nuvol de la pocio), hi queda una font d'aigua
execute as @e[type=minecraft:area_effect_cloud,nbt={potion_contents: {potion: "minecraft:water_breathing"}}] at @s run function daisukes:modifiers/agua/impact
