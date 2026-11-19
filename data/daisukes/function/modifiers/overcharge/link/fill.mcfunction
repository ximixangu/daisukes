# Com a mob de la xarxa, als peus: si li queda alguna casella lliure (de les #links), busca un raig nou entre els 3
# mobs mes propers amb qui encara no estigui connectat (en cap sentit)
scoreboard players set #slot daisukes.oc 0
execute if score #links daisukes.oc matches 3.. unless score @s daisukes.oc_l3 matches 1.. run scoreboard players set #slot daisukes.oc 3
execute if score #links daisukes.oc matches 2.. unless score @s daisukes.oc_l2 matches 1.. run scoreboard players set #slot daisukes.oc 2
execute unless score @s daisukes.oc_l1 matches 1.. run scoreboard players set #slot daisukes.oc 1
execute if score #slot daisukes.oc matches 0 run return 0
scoreboard players operation #l1 daisukes.oc = @s daisukes.oc_l1
scoreboard players operation #l2 daisukes.oc = @s daisukes.oc_l2
scoreboard players operation #l3 daisukes.oc = @s daisukes.oc_l3
tag @s add daisukes.oc_self
scoreboard players set #done daisukes.oc 0
execute as @e[tag=daisukes.oc_mob,tag=!daisukes.oc_self,distance=..32,predicate=daisukes:overcharge/candidate,sort=nearest,limit=3] run function daisukes:modifiers/overcharge/link/try
tag @s remove daisukes.oc_self
