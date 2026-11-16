# Picada (clic esquerre o dret): l'anima queda lliure i se'n va sense fer mal
particle minecraft:soul ~ ~0.35 ~ 0.15 0.2 0.15 0.06 10 force
particle minecraft:poof ~ ~0.35 ~ 0.1 0.1 0.1 0.02 5 force
execute positioned ~ ~0.35 ~ run function daisukes:modifiers/mini_creeper/soul/ring {s: 0.18}
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 0.7 1.4
playsound minecraft:particle.soul_escape hostile @a ~ ~ ~ 1.5 1.8
kill @s
