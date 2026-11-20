# Com a l'anima. Ticks 0-11: avis (xiulet de picada; recula una mica, si hi ha lloc, i crema mes fort).
# Des del 12: es llanca contra el jugador, cada cop mes rapid, fins que el toca (fly) o la piquen (tick)
execute if score @s daisukes.soul matches 0 run playsound minecraft:entity.phantom.swoop hostile @a ~ ~ ~ 1.2 1.6
execute if score @s daisukes.soul matches ..11 at @s positioned ~ ~0.35 ~ facing entity @a[tag=daisukes.soul_me,limit=1] eyes positioned ^ ^ ^-0.05 if block ~ ~ ~ #minecraft:replaceable positioned ~ ~-0.35 ~ run tp @s ~ ~ ~
execute if score @s daisukes.soul matches ..11 run particle minecraft:soul_fire_flame ~ ~0.35 ~ 0.15 0.15 0.15 0.02 3 force
execute if score @s daisukes.soul matches ..11 run return 0
execute if score @s daisukes.soul matches 12..16 run function daisukes:modifiers/soul_escape/soul/move {x: 0, y: 0, z: 0.28}
execute if score @s daisukes.soul matches 17..21 run function daisukes:modifiers/soul_escape/soul/move {x: 0, y: 0, z: 0.36}
execute if score @s daisukes.soul matches 22..26 run function daisukes:modifiers/soul_escape/soul/move {x: 0, y: 0, z: 0.46}
execute if score @s daisukes.soul matches 27.. run function daisukes:modifiers/soul_escape/soul/move {x: 0, y: 0, z: 0.6}
particle minecraft:soul ~ ~0.35 ~ 0.05 0.05 0.05 0.01 1 force
# 3 s sense atrapar-lo (corre molt): torna a voltar
execute if score @s daisukes.soul matches 72.. run function daisukes:modifiers/soul_escape/soul/hunt_start
