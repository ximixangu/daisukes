# Macro: {w, h}. Com a jugador, als peus: les plantes (i la neu, les liames...) que te dins del cos es trenquen, amb el
# seu so i el que deixin anar, i cada una dona #crush de massa
$execute store result score #n daisukes.km run fill ~-$(w) ~ ~-$(w) ~$(w) ~$(h) ~$(w) minecraft:air replace #daisukes:katamari/crush_small destroy
scoreboard players operation #n daisukes.km *= #crush daisukes.km
scoreboard players operation @s daisukes.km_mass += #n daisukes.km
