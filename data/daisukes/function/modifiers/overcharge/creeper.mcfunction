# Com a creeper que acaba de quedar connectat a la xarxa: es converteix en creeper carregat (com si li hagues caigut
# un llamp). Quan s'acaba el modificador, torna a ser normal (clear)
execute if data entity @s {powered: true} run return 0
data merge entity @s {powered: true}
tag @s add daisukes.oc_charged
particle minecraft:flash{color: [0.42, 0.72, 1.0, 1.0]} ~ ~0.9 ~ 0 0 0 0 1 force
particle minecraft:electric_spark ~ ~0.9 ~ 0.4 0.6 0.4 0.1 30 force
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 1.3
