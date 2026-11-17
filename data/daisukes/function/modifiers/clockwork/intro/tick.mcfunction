# Com al jugador, als seus peus, durant l'entrada (#intro: de 99 a 1)
execute if score #intro daisukes.cw matches 77..99 run function daisukes:modifiers/clockwork/intro/clock
execute if score #intro daisukes.cw matches 72 run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1.122462
execute if score #intro daisukes.cw matches 66 run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1.0
execute if score #intro daisukes.cw matches 60 run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 0.890899
execute if score #intro daisukes.cw matches 54 run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 0.66742
execute if score #intro daisukes.cw matches 46 run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 0.890899
execute if score #intro daisukes.cw matches 40 run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1.122462
execute if score #intro daisukes.cw matches 34 run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1.0
execute if score #intro daisukes.cw matches 28 run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 0.66742
execute if score #intro daisukes.cw matches 18 run function daisukes:modifiers/clockwork/intro/fly
execute if score #intro daisukes.cw matches 8 run function daisukes:modifiers/clockwork/intro/land
