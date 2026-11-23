# Com al mob, al lloc on caura (centre del bloc; ell encara es on era). Com un enderman: el so als dos llocs i
# purpurina d'un a l'altre (la d'on surt, la d'util/teleport; la d'arribada, la d'Heisenberg)
scoreboard players set #done daisukes.em 1
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 30
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1
scoreboard players set #steps daisukes.em 0
execute facing entity @s feet run function daisukes:modifiers/ender_mobs/tp/trail
# Si anava muntat (en una barca, sobre una aranya...), en baixa. Arriba mirant el seu objectiu, si en te a prop
ride @s dismount
execute if score #guard daisukes.em matches 1.. run tp @s ~ ~ ~ facing entity @n[tag=daisukes.em_tgt] eyes
execute if score #guard daisukes.em matches 0 run tp @s ~ ~ ~
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 15
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1
return 1
