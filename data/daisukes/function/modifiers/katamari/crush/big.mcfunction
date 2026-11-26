# Macro: {w2, h2}. Com a jugador, als peus: les fulles, cactus, bambu, bolets gegants... que toca (al costat i per
# sobre del cap, no per sota dels peus) es trenquen, i cada un dona #crush de massa
$execute store result score #n daisukes.km run fill ~-$(w2) ~ ~-$(w2) ~$(w2) ~$(h2) ~$(w2) minecraft:air replace #daisukes:katamari/crush_big destroy
scoreboard players operation #n daisukes.km *= #crush daisukes.km
scoreboard players operation @s daisukes.km_mass += #n daisukes.km
