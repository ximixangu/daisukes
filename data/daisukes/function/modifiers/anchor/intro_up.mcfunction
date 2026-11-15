execute if entity @s[tag=daisukes.anchor_h0] run data merge entity @s {start_interpolation: 0, interpolation_duration: 5, transformation: {translation: [-0.45f, 0f, -0.45f]}}
execute if entity @s[tag=daisukes.anchor_h1] run data merge entity @s {start_interpolation: 0, interpolation_duration: 5, transformation: {translation: [-0.45f, 0.9f, -0.45f]}}
execute if entity @s[tag=daisukes.anchor_h2] run data merge entity @s {start_interpolation: 0, interpolation_duration: 5, transformation: {translation: [-0.45f, 1.8f, -0.45f]}}
# La de baix: pols i un clic de cadena, cada cadena una nota mes aguda
execute if entity @s[tag=daisukes.anchor_h0] run particle minecraft:dust_plume ~ ~0.1 ~ 0.25 0.05 0.25 0.01 6 force @a[distance=..32]
execute if entity @s[tag=daisukes.anchor_h0] if score #time daisukes.anchor matches 2 run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.6 0.629961
execute if entity @s[tag=daisukes.anchor_h0] if score #time daisukes.anchor matches 4 run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.6 0.707107
execute if entity @s[tag=daisukes.anchor_h0] if score #time daisukes.anchor matches 6 run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.6 0.793701
execute if entity @s[tag=daisukes.anchor_h0] if score #time daisukes.anchor matches 8 run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.6 0.943874
execute if entity @s[tag=daisukes.anchor_h0] if score #time daisukes.anchor matches 10 run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.6 1.059463
execute if entity @s[tag=daisukes.anchor_h0] if score #time daisukes.anchor matches 12 run playsound minecraft:block.chain.place block @a ~ ~ ~ 0.6 1.259921
