# Purpurina vermella pel raig (els primers 48 blocs), nomes per als altres: un pas si i un no
execute store success score #flip daisukes.le unless score #flip daisukes.le matches 1
execute if score #flip daisukes.le matches 1 run particle minecraft:dust{color:[1.0,0.2,0.15],scale:0.7} ~ ~ ~ 0 0 0 0 1 force @a[tag=!daisukes.le_me]
