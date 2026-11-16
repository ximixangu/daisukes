# Volum 1,5: no sona mes fort, pero se sent fins a 24 blocs (el cor pot ser a 17 + 4 de fondaria)
scoreboard players set #beat daisukes.heart 0
execute as @e[type=minecraft:interaction,tag=daisukes.heart_core] at @s positioned ~ ~0.505 ~ if entity @a[distance=..24] run playsound minecraft:block.creaking_heart.idle block @a ~ ~ ~ 1.5 0.9
