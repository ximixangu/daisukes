# Com a jugador (no espectador), on es, quan li toca: parella nova en dues de les 6 caselles veines de la seva (els 4
# costats, amunt i avall). Si la caixa forta encara no es carregada o no hi ha prou caselles bones, ho torna a provar
# d'aqui a 1 s
scoreboard players set @s daisukes.we_t 20
execute in minecraft:overworld unless loaded 29998976 200 29998976 run return 0
execute in minecraft:overworld unless loaded 29999007 231 29999007 run return 0

# Casella del jugador: la cantonada de baix, a multiples de #size (#ox #oy #oz)
execute summon minecraft:marker run function daisukes:modifiers/world_edit/pick/here
scoreboard players operation #ox daisukes.we = #px daisukes.we
scoreboard players operation #ox daisukes.we /= #size daisukes.we
scoreboard players operation #ox daisukes.we *= #size daisukes.we
scoreboard players operation #oy daisukes.we = #py daisukes.we
scoreboard players operation #oy daisukes.we /= #size daisukes.we
scoreboard players operation #oy daisukes.we *= #size daisukes.we
scoreboard players operation #oz daisukes.we = #pz daisukes.we
scoreboard players operation #oz daisukes.we /= #size daisukes.we
scoreboard players operation #oz daisukes.we *= #size daisukes.we

# Les 6 veines: cada una que valgui deixa un marcador candidat (pick/next)
scoreboard players operation #x daisukes.we = #ox daisukes.we
scoreboard players operation #x daisukes.we += #size daisukes.we
scoreboard players operation #y daisukes.we = #oy daisukes.we
scoreboard players operation #z daisukes.we = #oz daisukes.we
function daisukes:modifiers/world_edit/pick/next
scoreboard players operation #x daisukes.we = #ox daisukes.we
scoreboard players operation #x daisukes.we -= #size daisukes.we
scoreboard players operation #y daisukes.we = #oy daisukes.we
scoreboard players operation #z daisukes.we = #oz daisukes.we
function daisukes:modifiers/world_edit/pick/next
scoreboard players operation #x daisukes.we = #ox daisukes.we
scoreboard players operation #y daisukes.we = #oy daisukes.we
scoreboard players operation #y daisukes.we += #size daisukes.we
scoreboard players operation #z daisukes.we = #oz daisukes.we
function daisukes:modifiers/world_edit/pick/next
scoreboard players operation #x daisukes.we = #ox daisukes.we
scoreboard players operation #y daisukes.we = #oy daisukes.we
scoreboard players operation #y daisukes.we -= #size daisukes.we
scoreboard players operation #z daisukes.we = #oz daisukes.we
function daisukes:modifiers/world_edit/pick/next
scoreboard players operation #x daisukes.we = #ox daisukes.we
scoreboard players operation #y daisukes.we = #oy daisukes.we
scoreboard players operation #z daisukes.we = #oz daisukes.we
scoreboard players operation #z daisukes.we += #size daisukes.we
function daisukes:modifiers/world_edit/pick/next
scoreboard players operation #x daisukes.we = #ox daisukes.we
scoreboard players operation #y daisukes.we = #oy daisukes.we
scoreboard players operation #z daisukes.we = #oz daisukes.we
scoreboard players operation #z daisukes.we -= #size daisukes.we
function daisukes:modifiers/world_edit/pick/next

# Amb dues o mes, parella (pick/pair); les candidates que sobren, fora
execute store result score #c daisukes.we if entity @e[type=minecraft:marker,tag=daisukes.we_cand]
execute if score #c daisukes.we matches 2.. run function daisukes:modifiers/world_edit/pick/pair
kill @e[type=minecraft:marker,tag=daisukes.we_cand]
