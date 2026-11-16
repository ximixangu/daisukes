# Com a l'anima: volta al voltant del jugador (soul_me) com un vex, amb el centre a l'altura dels seus ulls.
# De costat, fent onades amunt i avall i, de tant en tant, girant de sentit
execute if entity @s[tag=daisukes.soul_ccw] run function daisukes:modifiers/mini_creeper/soul/move {x: 0.24, y: 0, z: 0}
execute if entity @s[tag=!daisukes.soul_ccw] run function daisukes:modifiers/mini_creeper/soul/move {x: -0.24, y: 0, z: 0}
scoreboard players operation #b daisukes.soul = @s daisukes.soul
scoreboard players operation #b daisukes.soul /= #12 daisukes.soul
scoreboard players operation #b daisukes.soul %= #2 daisukes.soul
execute if score #b daisukes.soul matches 0 at @s run tp @s ~ ~0.05 ~
execute if score #b daisukes.soul matches 1 at @s run tp @s ~ ~-0.05 ~
execute store result score #r daisukes.soul run random value 1..40
execute if score #r daisukes.soul matches 1 run function daisukes:modifiers/mini_creeper/soul/turn

# Lluny s'hi acosta de pressa (a 4,5-7 blocs, una mica mes que corrent: corrent nomes la fas esperar);
# entre 3 i 4,5 blocs tanca el cercle a poc a poc; mes a prop s'aparta
execute unless entity @a[tag=daisukes.soul_me,distance=..7] run function daisukes:modifiers/mini_creeper/soul/move {x: 0, y: 0, z: 0.5}
execute if entity @a[tag=daisukes.soul_me,distance=4.5..7] run function daisukes:modifiers/mini_creeper/soul/move {x: 0, y: 0, z: 0.32}
execute if entity @a[tag=daisukes.soul_me,distance=3..4.5] run function daisukes:modifiers/mini_creeper/soul/move {x: 0, y: 0, z: 0.04}
execute if entity @a[tag=daisukes.soul_me,distance=..3] run function daisukes:modifiers/mini_creeper/soul/move {x: 0, y: 0, z: -0.1}
# Dins d'un bloc no es veu ni es pot picar: en surt cap al jugador (fins a 1,5 blocs d'ell; als tunels hi entra)
execute if entity @a[tag=daisukes.soul_me,distance=1.5..] at @s unless block ~ ~0.35 ~ #minecraft:replaceable run function daisukes:modifiers/mini_creeper/soul/move {x: 0, y: 0, z: 0.3}

# Xiuxiueig cada 1,2 s: se sent d'on ve
scoreboard players operation #b daisukes.soul = @s daisukes.soul
scoreboard players operation #b daisukes.soul %= #24 daisukes.soul
execute if score #b daisukes.soul matches 0 run playsound minecraft:particle.soul_escape hostile @a ~ ~ ~ 0.6 1.5

# Ja li toca. Si una altra s'esta llancant contra el mateix jugador, espera 0,4-1 s mes (no venen seguides)
execute if score @s daisukes.soul matches 0.. if score #busy daisukes.soul matches 1.. store result score @s daisukes.soul run random value -20..-8
# Si no, es llanca: si es a prop i a la vista (no dins d'un bloc)
execute if score @s daisukes.soul matches 0.. if score #busy daisukes.soul matches 0 if entity @a[tag=daisukes.soul_me,distance=..4.5] at @s if block ~ ~0.35 ~ #minecraft:replaceable run function daisukes:modifiers/mini_creeper/soul/aim
