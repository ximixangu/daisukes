# Com el marker i a la seva posició.
scoreboard players add @s daisukes.thunder_t 1

# Zona de perill: el llamp toca fins a ~3 blocs de radi
particle minecraft:dust{color:[1.0,0.85,0.1],scale:1.2} ~ ~0.1 ~ 1.5 0 1.5 0 3 force
particle minecraft:electric_spark ~ ~0.1 ~ 0.3 0 0.3 0.05 1 force

# 40 ticks (2 s) d'avís abans del llamp
execute if score @s daisukes.thunder_t matches 40.. run function daisukes:modifiers/thunderstruck/strike
