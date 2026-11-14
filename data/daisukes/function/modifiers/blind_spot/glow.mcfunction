# Metxa encesa, nomes per a qui es fora del punt cec: flameta i brasa. El punt cec es la primera xifra de distance
# (6 blocs; 8 a l'ultima fase, #wide 1) i 48 es fins on es veu
execute if score #wide daisukes.bspot matches 0 run particle minecraft:flame ~ ~0.25 ~ 0.02 0.03 0.02 0.002 2 force @a[distance=6..48]
execute if score #wide daisukes.bspot matches 0 run particle minecraft:dust{color:[1.0,0.35,0.05],scale:1.6} ~ ~0.15 ~ 0 0 0 0 1 force @a[distance=6..48]
execute if score #wide daisukes.bspot matches 1 run particle minecraft:flame ~ ~0.25 ~ 0.02 0.03 0.02 0.002 2 force @a[distance=8..48]
execute if score #wide daisukes.bspot matches 1 run particle minecraft:dust{color:[1.0,0.35,0.05],scale:1.6} ~ ~0.15 ~ 0 0 0 0 1 force @a[distance=8..48]
