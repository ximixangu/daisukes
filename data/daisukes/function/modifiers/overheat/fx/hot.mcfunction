# Com a jugador molt calent (del 80 % fins que s'encen), als seus peus. Una sola tirada per tick:
# sua mes (~2 gotes per segon), li surt fum del cap (~2 per segon) i, de tant en tant, un espetec que nomes sent ell
execute store result score #r daisukes.heat run random value 1..40
execute if score #r daisukes.heat matches 1..4 run particle minecraft:falling_water ~ ~1.45 ~ 0.22 0.1 0.22 0 1
execute if score #r daisukes.heat matches 5..8 run particle minecraft:smoke ~ ~1.85 ~ 0.15 0.05 0.15 0.005 1
execute if score #r daisukes.heat matches 9 run playsound minecraft:block.campfire.crackle player @s ~ ~ ~ 0.5 1.2
