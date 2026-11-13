scoreboard players set #tick daisukes.shadow 0
scoreboard players add #beat daisukes.shadow 1
execute if score #beat daisukes.shadow matches 16.. run scoreboard players set #beat daisukes.shadow 0

# Les ombres ballen: s'ajupen a cada temps
execute as @e[type=mannequin,tag=daisukes.shadow] run data merge entity @s {pose: "crouching"}

# La canco (notes, salts i cops)
function daisukes:modifiers/shadow/song

# On es cada jugador ara, per saber quant es mou en cada temps (aim ho fa servir per endevinar on sera)
execute as @e[type=player,gamemode=!spectator] store result score @s daisukes.shadow_x run data get entity @s Pos[0] 10
execute as @e[type=player,gamemode=!spectator] store result score @s daisukes.shadow_z run data get entity @s Pos[2] 10
