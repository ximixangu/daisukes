# Tipus especial entre els que hi ha al nivell (es van sumant): 1 grossa, 2 es parteix, 3 doble, 4 mantenir
scoreboard players set #x daisukes.rush 1
execute if score #lv daisukes.rush matches 3 run scoreboard players set #x daisukes.rush 3
execute if score #lv daisukes.rush matches 4 run scoreboard players set #x daisukes.rush 4
execute store result score #k daisukes.rush run random value 0..11
scoreboard players operation #k daisukes.rush %= #x daisukes.rush
scoreboard players add #k daisukes.rush 1
