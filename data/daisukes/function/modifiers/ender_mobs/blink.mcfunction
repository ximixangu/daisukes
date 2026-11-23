# Com al mob que salta, als peus: com un enderman, a un lloc a l'atzar entre #near i #far blocs (tp/search).
# #force 1 (cop de jugador): sense esperar el #cooldown des del darrer salt
scoreboard players operation #d daisukes.em = #now daisukes.em
scoreboard players operation #d daisukes.em -= @s daisukes.em_last
execute if score #force daisukes.em matches 0 if score #d daisukes.em < #cooldown daisukes.em run return fail
# Si porta algu a sobre (un jugador a cavall, el genet d'una aranya...), no salta
execute if function daisukes:modifiers/ender_mobs/carrying run return fail

# El seu objectiu (el jugador que persegueix, per exemple): en arribar el mira, i no se n'allunya tant que el perdi
# (la majoria de mobs el perden a mes de 16 blocs; els zombis, a mes de 35). Si era a 10 blocs, cau a 10 com a molt;
# si era a 16, a 16 (#guard 1 o 2, tp/fits)
scoreboard players set #guard daisukes.em 0
execute on target run tag @s add daisukes.em_tgt
execute if entity @e[tag=daisukes.em_tgt,distance=..16] run scoreboard players set #guard daisukes.em 2
execute if entity @e[tag=daisukes.em_tgt,distance=..10] run scoreboard players set #guard daisukes.em 1
function daisukes:modifiers/ender_mobs/tp/search
execute on target run tag @s remove daisukes.em_tgt
execute if score #done daisukes.em matches 1 run scoreboard players operation @s daisukes.em_last = #now daisukes.em
