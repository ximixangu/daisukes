# Com a zombi: Velocitat IV, detecta jugadors fins a 128 blocs i, en dificultat dificil, 50% de cridar reforcos.
# (Abans: 2000 blocs. Cada cami dels zombis es calculava sobre una regio de 4000 x 4000 blocs: molt de lag,
# i mes enlla de 128 blocs el servidor gairebe no simula res. Els reforcos: 10 en activar-se i 0.5 despres)
tag @s add daisukes.tsunami
attribute @s minecraft:follow_range modifier add daisukes:tsunami 93 add_value
attribute @s minecraft:spawn_reinforcements modifier add daisukes:tsunami 0.5 add_value
effect give @s minecraft:speed infinite 3 true
