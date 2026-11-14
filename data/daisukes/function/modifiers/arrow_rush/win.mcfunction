# Sequencia feta: el centre i la barra de dalt desapareixen i sona l'acord final (sense cap avis)
title @s clear
$bossbar set daisukes:rush_$(id) visible false
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.6 1.498307
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.6 2
scoreboard players set @s daisukes.rush 0
scoreboard players set @s daisukes.rush_a 0
scoreboard players set @s daisukes.rush_k 0
