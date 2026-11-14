# Nota del pas: escala pentatonica que puja amb cada pas fet
$execute store result score #i daisukes.rush run data get storage daisukes:rush p.$(id).done
execute if score #i daisukes.rush matches 0 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 0.749154
execute if score #i daisukes.rush matches 1 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 0.840896
execute if score #i daisukes.rush matches 2 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 1
execute if score #i daisukes.rush matches 3 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 1.122462
execute if score #i daisukes.rush matches 4 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 1.259921
execute if score #i daisukes.rush matches 5 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 1.498307
execute if score #i daisukes.rush matches 6 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 1.681793
execute if score #i daisukes.rush matches 7.. run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 2
