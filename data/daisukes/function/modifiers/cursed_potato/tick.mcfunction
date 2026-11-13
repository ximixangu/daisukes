# Cada jugador va acumulant (de mitjana 3 per tick); a 300 (uns 5 s) li surt una Hot Potato
execute as @e[type=minecraft:player,gamemode=!spectator] run function daisukes:modifiers/cursed_potato/charge

# Qui en porti alguna (inventari, ma esquerra o agafada amb el ratoli) crema, i crida dos cops per segon
scoreboard players add #scream daisukes.potato 1
execute if score #scream daisukes.potato matches 10.. run scoreboard players set #scream daisukes.potato 0
execute as @a[gamemode=!spectator] at @s if function daisukes:modifiers/cursed_potato/has_potato run function daisukes:modifiers/cursed_potato/burn
