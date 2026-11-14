# La ruleta gira: a cada salt, el punter il·lumina un bloc a l'atzar al voltant de cada jugador
scoreboard players remove #wait daisukes.lava 1
execute if score #wait daisukes.lava matches 1.. run return 0
scoreboard players add #gap daisukes.lava 1
scoreboard players operation #wait daisukes.lava = #gap daisukes.lava

# Despres del 10e salt i mig segon de pausa, s'atura (2,75 s en total)
execute if score #gap daisukes.lava matches 11.. run return run function daisukes:modifiers/lava_roulette/reveal

execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/lava_roulette/find
function daisukes:modifiers/lava_roulette/note with storage daisukes:lava notes[0]
data remove storage daisukes:lava notes[0]
execute store result bossbar daisukes:lava value run scoreboard players get #gap daisukes.lava
