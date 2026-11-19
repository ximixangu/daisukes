# Macro: {r, rh}. Com al pols: la descarga. Fa mal als jugadors a menys de r blocs que toquen a terra (o son a
# l'aigua) i tenen els peus a prop de l'altura del pols (de 1 bloc per sota a 1,5 per sobre). Al parallamps, sense mal
tag @s add daisukes.oc_done
scoreboard players set @s daisukes.oc_a2 0
execute if entity @s[tag=daisukes.oc_grounded] run return run function daisukes:modifiers/overcharge/pulse/rod_discharge
particle minecraft:flash{color: [0.42, 0.72, 1.0, 1.0]} ~ ~0.3 ~ 0 0 0 0 1 force
$particle minecraft:electric_spark ~ ~0.15 ~ $(rh) 0.05 $(rh) 0.3 60 force
function daisukes:modifiers/overcharge/pulse/ring with storage daisukes:overcharge config.ring1
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1.2 1.1
playsound minecraft:block.copper_bulb.turn_on hostile @a ~ ~ ~ 1 0.5
tag @s add daisukes.oc_now
$execute as @e[type=minecraft:player,distance=..$(r),gamemode=!spectator,gamemode=!creative] at @s positioned ~-50 ~-1.5 ~-50 if entity @e[type=minecraft:marker,tag=daisukes.oc_now,dx=100,dy=1.5,dz=100] if predicate daisukes:overcharge/shocked run function daisukes:modifiers/overcharge/pulse/hit with storage daisukes:overcharge config
tag @s remove daisukes.oc_now
