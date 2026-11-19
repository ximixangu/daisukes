# Com a mob nou a prop d'un jugador: entra a la xarxa. Si el tenen a prop dos jugadors, surt dos cops en el mateix
# tick: nomes compta el primer
execute if predicate daisukes:overcharge/tracked run return 0
execute if score #count daisukes.oc >= #max_mobs daisukes.oc run return 0
scoreboard players add #count daisukes.oc 1
execute store result score @s daisukes.oc_id run scoreboard players add #next daisukes.oc 1
tag @s add daisukes.oc_mob
# (un mob que s'acaba de convertir pot haver heretat les etiquetes de l'anterior)
tag @s remove daisukes.oc_odd
tag @s remove daisukes.oc_ride
scoreboard players set @s daisukes.oc_l1 0
scoreboard players set @s daisukes.oc_l2 0
scoreboard players set @s daisukes.oc_l3 0
# Meitat de la xarxa es revisa els ticks parells i l'altra els senars
scoreboard players operation #p daisukes.oc = @s daisukes.oc_id
scoreboard players operation #p daisukes.oc %= #2 daisukes.oc
execute if score #p daisukes.oc matches 1 run tag @s add daisukes.oc_odd
# Els muntables no poden portar res a sobre (ja no es podrien muntar): una ombra que els segueix. La resta, un
# marker a sobre (un mob que s'acaba de convertir pot portar ja el de l'anterior)
execute if entity @s[type=#daisukes:rideable] run tag @s add daisukes.oc_ride
execute if entity @s[tag=daisukes.oc_ride] run return run function daisukes:modifiers/overcharge/shadow/new
execute on passengers if entity @s[tag=daisukes.oc_rider] run return 0
tag @s add daisukes.oc_new
execute summon minecraft:marker run function daisukes:modifiers/overcharge/attach
tag @s remove daisukes.oc_new
