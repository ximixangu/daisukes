particle minecraft:block{block_state:"minecraft:gold_block"} ~ ~ ~ 0.2 0.05 0.2 0 14 force @a[distance=..48]
particle minecraft:electric_spark ~ ~ ~ 0.25 0.1 0.25 0.3 8 force @a[distance=..48]
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 3 force @a[distance=..48]
execute if score #k daisukes.anchor matches 1 run playsound minecraft:block.chain.break block @a ~ ~ ~ 1 0.70
execute if score #k daisukes.anchor matches 1 run playsound minecraft:block.note_block.bell block @a ~ ~ ~ 0.8 0.707107
execute if score #k daisukes.anchor matches 2 run playsound minecraft:block.chain.break block @a ~ ~ ~ 1 0.85
execute if score #k daisukes.anchor matches 2 run playsound minecraft:block.note_block.bell block @a ~ ~ ~ 0.8 0.793701
execute if score #k daisukes.anchor matches 3 run playsound minecraft:block.chain.break block @a ~ ~ ~ 1 1.00
execute if score #k daisukes.anchor matches 3 run playsound minecraft:block.note_block.bell block @a ~ ~ ~ 0.8 0.890899
execute if score #k daisukes.anchor matches 4 run playsound minecraft:block.chain.break block @a ~ ~ ~ 1 1.15
execute if score #k daisukes.anchor matches 4 run playsound minecraft:block.note_block.bell block @a ~ ~ ~ 0.8 1.059463
execute if score #k daisukes.anchor matches 5.. run playsound minecraft:block.chain.break block @a ~ ~ ~ 1 1.30
execute if score #k daisukes.anchor matches 5.. run playsound minecraft:block.note_block.bell block @a ~ ~ ~ 0.8 1.189207
