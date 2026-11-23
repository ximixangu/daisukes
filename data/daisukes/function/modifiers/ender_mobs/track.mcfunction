# Com a mob nou a prop d'un jugador: es vigila, amb una fase (de 0 a 7, per torns) que diu en quin tick de cada 8
# es mira. Si el tenen a prop dos jugadors surt dos cops en el mateix tick: nomes compta el primer
execute if entity @s[tag=daisukes.em_mob] run return 0
tag @s add daisukes.em_mob
# HurtTime de partida, el maxim: un mal d'abans d'entrar no compta
scoreboard players set @s daisukes.em_ht 10
scoreboard players add #rr daisukes.em 1
execute if score #rr daisukes.em matches 8.. run scoreboard players set #rr daisukes.em 0
execute if score #rr daisukes.em matches 0 run return run tag @s add daisukes.em_0
execute if score #rr daisukes.em matches 1 run return run tag @s add daisukes.em_1
execute if score #rr daisukes.em matches 2 run return run tag @s add daisukes.em_2
execute if score #rr daisukes.em matches 3 run return run tag @s add daisukes.em_3
execute if score #rr daisukes.em matches 4 run return run tag @s add daisukes.em_4
execute if score #rr daisukes.em matches 5 run return run tag @s add daisukes.em_5
execute if score #rr daisukes.em matches 6 run return run tag @s add daisukes.em_6
tag @s add daisukes.em_7
