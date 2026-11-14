# Cada tirada: la ruleta tria un bloc, avisa 2 s i tots els blocs d'aquest tipus cremen 6 s. Despres, descans.
#   #phase: 0 descans | 1 ruleta | 2 avis | 3 crema       #t: ticks que queden de la fase
scoreboard players remove #t daisukes.lava 1

execute if score #phase daisukes.lava matches 0 if score #round daisukes.lava matches 0 run function daisukes:modifiers/lava_roulette/intro
execute if score #phase daisukes.lava matches 0 if score #t daisukes.lava matches ..0 run function daisukes:modifiers/lava_roulette/spin_start
execute if score #phase daisukes.lava matches 1 run function daisukes:modifiers/lava_roulette/spin
execute if score #phase daisukes.lava matches 2 run function daisukes:modifiers/lava_roulette/warn
execute if score #phase daisukes.lava matches 3 run function daisukes:modifiers/lava_roulette/burn
