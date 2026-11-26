# Com a jugador, cada segon. Cada bloc que ha picat (mined/count) dona #mine de massa
scoreboard players set #mn daisukes.km 0
function daisukes:modifiers/katamari/mined/count
scoreboard players operation #mn daisukes.km *= #mine daisukes.km
scoreboard players operation @s daisukes.km_mass += #mn daisukes.km

# La mida que te es la que toca? En reviure, en sortir del End o si algu li toca els atributs, es pot perdre
execute store result score #a daisukes.km run attribute @s minecraft:scale modifier value get daisukes:katamari 100
scoreboard players operation #a daisukes.km -= @s daisukes.km_s
scoreboard players add #a daisukes.km 100
execute unless score #a daisukes.km matches -1..1 run function daisukes:modifiers/katamari/size
