# Recompensa de l'avancament king/strike: com al jugador que acaba de pegar a un monstre protegit (de prop o amb
# una fletxa). Quin es? El que te HurtTime 10 (el cop d'aquest mateix tick)
advancement revoke @s only daisukes:king/strike
execute unless data storage daisukes:state {active: ["king"]} run return 0
execute as @e[scores={daisukes.king_sub=1..},distance=..64,nbt={HurtTime: 10s}] at @s run function daisukes:modifiers/king/court/clang
execute unless score @s daisukes.king matches 1.. run function daisukes:modifiers/king/player/tip
