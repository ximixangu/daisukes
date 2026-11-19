# Com al pols, al bloc del parallamps: un arc des d'on ha tocat a terra fins a la punta, i s'hi queda (la descarga
# hi anira a parar, sense mal)
scoreboard players set #rod daisukes.oc 1
tag @s add daisukes.oc_grounded
execute align xyz positioned ~0.5 ~1 ~0.5 run tp @e[type=minecraft:marker,tag=daisukes.oc_pointer,limit=1] ~ ~ ~
scoreboard players set #mode daisukes.oc 3
scoreboard players set #steps daisukes.oc 0
scoreboard players set #max daisukes.oc 16
execute at @s positioned ~ ~0.2 ~ facing entity @e[type=minecraft:marker,tag=daisukes.oc_pointer,limit=1] feet run function daisukes:modifiers/overcharge/beam/step
execute align xyz positioned ~0.5 ~1 ~0.5 run tp @s ~ ~ ~
playsound minecraft:block.copper_bulb.turn_on hostile @a ~ ~ ~ 0.8 2
