# Com a jugador calent (de la meitat al 80 %), als seus peus. Sua: alguna gota li cau del coll (~1 per segon)
execute store result score #r daisukes.heat run random value 1..25
execute if score #r daisukes.heat matches 1 run particle minecraft:falling_water ~ ~1.45 ~ 0.22 0.1 0.22 0 1
