# En acabar el modificador: cada metxa s'apaga amb una bufada de fum
particle minecraft:smoke ~ ~0.3 ~ 0.1 0.1 0.1 0.01 6 force @a[distance=..32]
playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.25 1.8
kill @s
