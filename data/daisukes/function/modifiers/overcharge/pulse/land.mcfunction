# Com al pols, que acaba de tocar a terra (es queda just a la superficie del bloc) o d'entrar a l'aigua
tag @s add daisukes.oc_landed
scoreboard players set @s daisukes.oc_a1 0
execute if block ~ ~ ~ #daisukes:overcharge/liquid unless block ~ ~ ~ minecraft:lava run tag @s add daisukes.oc_wet
execute unless block ~ ~ ~ #daisukes:overcharge/liquid align y run tp @s ~ ~ ~
particle minecraft:electric_spark ~ ~0.1 ~ 0.3 0.05 0.3 0.15 16 force
playsound minecraft:block.copper_bulb.turn_on hostile @a ~ ~ ~ 0.8 0.7
# Un parallamps a 3 blocs s'emporta la descarga (a l'aigua no)
execute if score #rods daisukes.oc matches 1 unless entity @s[tag=daisukes.oc_wet] run function daisukes:modifiers/overcharge/pulse/rod_search
