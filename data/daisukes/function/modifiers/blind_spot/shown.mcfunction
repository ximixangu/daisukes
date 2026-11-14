# Marcada: brases a terra, flameta i una guspira que puja cada mig segon, per a tothom (tambe de prop)
scoreboard players remove @s daisukes.bspot_fx 1
particle minecraft:dust{color:[1.0,0.32,0.05],scale:1.3} ~ ~0.05 ~ 0.3 0 0.3 0 2 force @a[distance=..24]
particle minecraft:small_flame ~ ~0.25 ~ 0.02 0.02 0.02 0.002 1 force @a[distance=..24]
execute if score #m daisukes.bspot matches 0 run particle minecraft:end_rod ~ ~0.3 ~ 0 0.15 0 0.01 1 force @a[distance=..24]
execute if score #m daisukes.bspot matches 10 run particle minecraft:end_rod ~ ~0.3 ~ 0 0.15 0 0.01 1 force @a[distance=..24]
execute if score #m daisukes.bspot matches 0 run playsound minecraft:block.note_block.hat block @a[distance=..5,predicate=daisukes:blind_spot/sneaking] ~ ~ ~ 0.5 1.8
