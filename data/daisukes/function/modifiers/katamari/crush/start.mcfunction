# Com a jugador gran i dret, als peus, un tick si i un no: el que aixafa caminant. Caixes en centesimes de bloc a partir
# de la mida: mitja amplada del cos 0.3 x mida i alcada 1.8 x mida. Les plantes son dins del cos (no fan nosa); les
# fulles i els mobs, al voltant (35 centesimes mes enlla), perque si no no s'hi podria acostar
scoreboard players operation #w daisukes.km = @s daisukes.km_s
scoreboard players operation #w daisukes.km *= #3 daisukes.km
scoreboard players operation #w daisukes.km /= #10 daisukes.km
scoreboard players operation #h daisukes.km = @s daisukes.km_s
scoreboard players operation #h daisukes.km *= #18 daisukes.km
scoreboard players operation #h daisukes.km /= #10 daisukes.km
execute store result storage daisukes:katamari box.w double 0.01 run scoreboard players get #w daisukes.km
execute store result storage daisukes:katamari box.h double 0.01 run scoreboard players get #h daisukes.km
scoreboard players add #w daisukes.km 35
scoreboard players add #h daisukes.km 35
execute store result storage daisukes:katamari box.w2 double 0.01 run scoreboard players get #w daisukes.km
execute store result storage daisukes:katamari box.h2 double 0.01 run scoreboard players get #h daisukes.km
# Caixa dels mobs (dx/dy compten un bloc de mes): d = 2 x w2 - 1 i dy = alcada del cos - 1
scoreboard players operation #w daisukes.km *= #2 daisukes.km
scoreboard players remove #w daisukes.km 100
scoreboard players remove #h daisukes.km 135
execute store result storage daisukes:katamari box.d double 0.01 run scoreboard players get #w daisukes.km
execute store result storage daisukes:katamari box.dy double 0.01 run scoreboard players get #h daisukes.km

execute if score #plants daisukes.km matches 1.. if score @s daisukes.km_s >= #plants daisukes.km unless entity @s[gamemode=adventure] run function daisukes:modifiers/katamari/crush/small with storage daisukes:katamari box
execute if score #leaves daisukes.km matches 1.. if score @s daisukes.km_s >= #leaves daisukes.km unless entity @s[gamemode=adventure] run function daisukes:modifiers/katamari/crush/big with storage daisukes:katamari box
execute if score @s daisukes.km_hp matches 1.. run function daisukes:modifiers/katamari/crush/mobs with storage daisukes:katamari box
