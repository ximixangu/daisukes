# Com a jugador, als seus peus: li toca saltar

# To del so: com mes curt l'interval, mes agut (1.0 al primer salt, 1.9 quan ja en fa 10 per segon)
#   #tone = 9 * (#first - interval) / (#first - #min), de 0 a 9
scoreboard players operation #tone daisukes.heisenberg = #first daisukes.heisenberg
scoreboard players operation #tone daisukes.heisenberg -= @s daisukes.heis_gap
scoreboard players operation #tone daisukes.heisenberg *= #9 daisukes.heisenberg
scoreboard players operation #span daisukes.heisenberg = #first daisukes.heisenberg
scoreboard players operation #span daisukes.heisenberg -= #min daisukes.heisenberg
execute if score #span daisukes.heisenberg matches 1.. run scoreboard players operation #tone daisukes.heisenberg /= #span daisukes.heisenberg
execute if score #tone daisukes.heisenberg matches 10.. run scoreboard players set #tone daisukes.heisenberg 9
execute if score #tone daisukes.heisenberg matches ..-1 run scoreboard players set #tone daisukes.heisenberg 0
execute store result storage daisukes:heisenberg fx.tone int 1 run scoreboard players get #tone daisukes.heisenberg

# Salta a un lloc a l'atzar entre 2 i 8 blocs (util/teleport)
function daisukes:util/teleport/random {near: 2, far: 8}

# No hi ha cap lloc a prop (sota l'aigua, tancat dins la roca...): ho torna a provar d'aqui a 0.1 s
execute if score #done daisukes.tp matches 0 run return run scoreboard players set @s daisukes.heis_wait 2

# Purpurina i so on ha arribat
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 15
execute at @s run function daisukes:modifiers/heisenberg/sound with storage daisukes:heisenberg fx

# On ha arribat: el tick seguent es compara amb aquesta posicio (el salt no compta com a moure's)
data modify storage daisukes:heisenberg pos set from entity @s Pos
execute store result score #x daisukes.heisenberg run data get storage daisukes:heisenberg pos[0] 100
execute store result score #y daisukes.heisenberg run data get storage daisukes:heisenberg pos[1] 100
execute store result score #z daisukes.heisenberg run data get storage daisukes:heisenberg pos[2] 100

# El seguent arribara #less ticks abans que aquest (com a minim, cada #min)
scoreboard players operation @s daisukes.heis_gap -= #less daisukes.heisenberg
execute if score @s daisukes.heis_gap < #min daisukes.heisenberg run scoreboard players operation @s daisukes.heis_gap = #min daisukes.heisenberg
scoreboard players operation @s daisukes.heis_wait = @s daisukes.heis_gap
