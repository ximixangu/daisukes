# Perfect: escut de 2 cors durant 8 s (com l'Iso) i so de premi
effect give @s minecraft:absorption 8 0 true
particle minecraft:end_rod ~ ~1 ~ 0.4 0.5 0.4 0.06 12
particle minecraft:instant_effect{color: [1.0, 0.85, 0.35]} ~ ~1 ~ 0.4 0.5 0.4 0 12
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.9 1.5
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1.7
