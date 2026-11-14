# Com a jugador que s'acaba de sobreescalfar, als seus peus: s'encen i cremara fins que toqui aigua.
# No es foc de debo (no s'apaga amb la pluja ni crema res): flames al voltant i el mal de burn
scoreboard players operation @s daisukes.heat = #max daisukes.heat
scoreboard players set @s daisukes.heat_b 1

playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 1.2
particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 12
particle minecraft:smoke ~ ~1.3 ~ 0.25 0.4 0.25 0.02 6
