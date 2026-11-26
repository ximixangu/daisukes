# Com a jugador amb massa per creixer un pas (fins a daisukes.km_next): creix nomes si, a la mida nova, el cap i els
# ulls queden en lloc lliure. Si no, ho torna a provar d'aqui a 4 ticks
scoreboard players operation #x daisukes.km = @s daisukes.km_next
scoreboard players operation #x daisukes.km *= #18 daisukes.km
scoreboard players operation #x daisukes.km /= #10 daisukes.km
scoreboard players remove #x daisukes.km 5
execute store result storage daisukes:katamari room.top double 0.01 run scoreboard players get #x daisukes.km
scoreboard players operation #x daisukes.km = @s daisukes.km_next
scoreboard players operation #x daisukes.km *= #162 daisukes.km
scoreboard players operation #x daisukes.km /= #100 daisukes.km
execute store result storage daisukes:katamari room.eye double 0.01 run scoreboard players get #x daisukes.km
scoreboard players operation #x daisukes.km = @s daisukes.km_next
scoreboard players operation #x daisukes.km *= #3 daisukes.km
scoreboard players operation #x daisukes.km /= #10 daisukes.km
scoreboard players remove #x daisukes.km 5
execute store result storage daisukes:katamari room.c double 0.01 run scoreboard players get #x daisukes.km
scoreboard players operation #x daisukes.km = @s daisukes.km_next
scoreboard players operation #x daisukes.km *= #24 daisukes.km
scoreboard players operation #x daisukes.km /= #100 daisukes.km
execute store result storage daisukes:katamari room.e double 0.01 run scoreboard players get #x daisukes.km
scoreboard players set #ok daisukes.km 0
function daisukes:modifiers/katamari/grow/room with storage daisukes:katamari room
execute if score #ok daisukes.km matches 0 run return run scoreboard players set @s daisukes.km_cd 4

scoreboard players operation @s daisukes.km_s = @s daisukes.km_next
function daisukes:modifiers/katamari/size
function daisukes:modifiers/katamari/fx/pop
scoreboard players set @s daisukes.km_cd 2
