# Comença la il·lusió
kill @e[type=item_display,tag=daisukes.shift_fx]
scoreboard players set #intro daisukes.shift 0
bossbar set daisukes:shift color purple
bossbar set daisukes:shift value 1000
execute as @a at @s run playsound minecraft:item.bundle.insert master @s ~ ~ ~ 0.9 1.1
execute as @e[type=player] at @s anchored eyes positioned ^ ^-0.8 ^0.9 run particle minecraft:wax_on ~ ~ ~ 0.4 0.05 0.05 0 12
