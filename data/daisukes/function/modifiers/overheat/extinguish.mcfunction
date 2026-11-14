# Com a jugador que cremava i acaba de tocar aigua, als seus peus: s'apaga amb un "tsss" i una bufada de vapor.
# Quan es refredi del tot sonara la campaneta (heat_w 2)
scoreboard players set @s daisukes.heat_b 0
scoreboard players set @s daisukes.heat_w 2

playsound minecraft:entity.generic.extinguish_fire player @a ~ ~ ~ 0.7 1
particle minecraft:cloud ~ ~1 ~ 0.3 0.4 0.3 0.02 6
particle minecraft:white_smoke ~ ~1.3 ~ 0.25 0.3 0.25 0.02 6
