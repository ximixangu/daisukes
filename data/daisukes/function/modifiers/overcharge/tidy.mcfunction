# Cada 2 s. Els mobs a mes de 40 blocs de tots els jugadors surten de la xarxa
scoreboard players set #clock daisukes.oc 0
execute at @a as @e[tag=daisukes.oc_mob,distance=..40] run tag @s add daisukes.oc_near
execute as @e[tag=daisukes.oc_mob,tag=!daisukes.oc_near] run function daisukes:modifiers/overcharge/untrack
tag @e[tag=daisukes.oc_near] remove daisukes.oc_near
# Markers de sobre que s'han quedat sense mob (ha desaparegut) o en un mob que ja no es de la xarxa (convertit)
execute as @e[type=minecraft:marker,tag=daisukes.oc_rider] unless predicate daisukes:overcharge/riding run kill @s
execute as @e[type=minecraft:marker,tag=daisukes.oc_rider] on vehicle unless entity @s[tag=daisukes.oc_mob] on passengers if entity @s[tag=daisukes.oc_rider] run kill @s
