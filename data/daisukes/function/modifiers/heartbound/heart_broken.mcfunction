# Com a un cor que ja no hi es (al centre del bloc): si n'ha caigut res (una explosio), fora
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=minecraft:item,dx=0,dy=0,dz=0,nbt={Age: 0s}]
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=minecraft:item,dx=0,dy=0,dz=0,nbt={Age: 1s}]
particle minecraft:block_crumble{block_state: "minecraft:creaking_heart"} ~ ~ ~ 0.3 0.3 0.3 0 30 normal @a[distance=..48]
playsound minecraft:block.creaking_heart.break block @a ~ ~ ~ 1 0.8
# El seu creaking s'esmicola (i una estela taronja torna cap al cor) i l'amo queda lliure
execute store result score #o daisukes.heart run scoreboard players get @s daisukes.heart
function daisukes:modifiers/heartbound/here
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] if score @s daisukes.heart = #o daisukes.heart at @s run function daisukes:modifiers/heartbound/shatter with storage daisukes:heart t
execute as @a[tag=daisukes.heart_bound] if score @s daisukes.heart = #o daisukes.heart run function daisukes:modifiers/heartbound/freed
function daisukes:modifiers/heartbound/remove
