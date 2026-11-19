# Com a candidat (el mob que busca te l'etiqueta oc_self). Prova el raig: prou curt (#range) i sense blocs pel mig
execute if score #done daisukes.oc matches 1 run return 0
function daisukes:modifiers/overcharge/link/target
scoreboard players set #mode daisukes.oc 0
scoreboard players set #steps daisukes.oc 0
scoreboard players operation #max daisukes.oc = #form_steps daisukes.oc
execute as @e[tag=daisukes.oc_self,limit=1] at @s rotated 0 0 positioned ^ ^ ^10 facing entity @s eyes positioned as @s positioned ^ ^ ^2.95 rotated ~180 ~ positioned ^ ^ ^2.95 facing entity @e[type=minecraft:marker,tag=daisukes.oc_pointer,limit=1] feet run function daisukes:modifiers/overcharge/beam/step
tag @s remove daisukes.oc_b
execute unless score #res daisukes.oc matches 1 run return 0
# Connectats: el raig neix carregant (no fa mal fins a #beam_charge)
scoreboard players set #done daisukes.oc 1
execute if score #slot daisukes.oc matches 1 run scoreboard players operation @e[tag=daisukes.oc_self,limit=1] daisukes.oc_l1 = @s daisukes.oc_id
execute if score #slot daisukes.oc matches 1 run scoreboard players set @e[tag=daisukes.oc_self,limit=1] daisukes.oc_a1 0
execute if score #slot daisukes.oc matches 2 run scoreboard players operation @e[tag=daisukes.oc_self,limit=1] daisukes.oc_l2 = @s daisukes.oc_id
execute if score #slot daisukes.oc matches 2 run scoreboard players set @e[tag=daisukes.oc_self,limit=1] daisukes.oc_a2 0
execute if score #slot daisukes.oc matches 3 run scoreboard players operation @e[tag=daisukes.oc_self,limit=1] daisukes.oc_l3 = @s daisukes.oc_id
execute if score #slot daisukes.oc matches 3 run scoreboard players set @e[tag=daisukes.oc_self,limit=1] daisukes.oc_a3 0
execute at @e[tag=daisukes.oc_self,limit=1] run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 0.3 2
