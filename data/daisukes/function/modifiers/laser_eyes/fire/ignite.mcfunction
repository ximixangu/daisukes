# Com al mob encarat, al centre del bloc dels seus peus: s'encen 8 s, com si trepitges foc (#heat torna a 0: si
# continua mirant, ho torna a fer). Dins l'aigua, nomes fumet
scoreboard players set #heat daisukes.le 0
execute if block ~ ~ ~ minecraft:water run return run function daisukes:modifiers/laser_eyes/fire/fizzle
execute if block ~ ~ ~ minecraft:bubble_column run return run function daisukes:modifiers/laser_eyes/fire/fizzle
data merge entity @s {Fire:160s}
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.7 1.3
particle minecraft:flame ~ ~0.5 ~ 0.25 0.5 0.25 0.02 14 force
particle minecraft:lava ~ ~0.5 ~ 0.2 0.3 0.2 0 2 force
