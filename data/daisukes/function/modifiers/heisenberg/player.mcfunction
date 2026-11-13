# Com a jugador, als seus peus. Cada tick: s'ha mogut des del tick anterior o s'esta quiet?

# On es ara, en centesimes de bloc (una sola lectura de l'NBT del jugador)
data modify storage daisukes:heisenberg pos set from entity @s Pos
execute store result score #x daisukes.heisenberg run data get storage daisukes:heisenberg pos[0] 100
execute store result score #y daisukes.heisenberg run data get storage daisukes:heisenberg pos[1] 100
execute store result score #z daisukes.heisenberg run data get storage daisukes:heisenberg pos[2] 100
scoreboard players operation #dy daisukes.heisenberg = #y daisukes.heisenberg
scoreboard players operation #dy daisukes.heisenberg -= @s daisukes.heis_y

# Compta com a moure's:
#  - desplacar-se en horitzontal (caminar, correr, nedar, anar a cavall o en barca, planar...)
#    Saltar al mateix lloc, fer un pilar cap amunt o empenyer una paret NO compta
#  - pujar o baixar de pressa, mig bloc per tick o mes (caure de lluny, levitar, bombolles...)
#  - pujar o baixar per una escala, una liana o una bastida
#  - prement W/A/S/D quan ja ha saltat algun cop: fins que el client no confirma el teleport,
#    el servidor no fa cas de la seva posicio, i amb ping alt es quedaria saltant per sempre
#    encara que estigues caminant
# Un jugador sense posicio guardada (el modificador s'acaba d'activar) compta com que s'ha mogut
scoreboard players set #moved daisukes.heisenberg 0
execute unless score @s daisukes.heis_x = #x daisukes.heisenberg run scoreboard players set #moved daisukes.heisenberg 1
execute unless score @s daisukes.heis_z = #z daisukes.heisenberg run scoreboard players set #moved daisukes.heisenberg 1
execute unless score #dy daisukes.heisenberg matches -49..49 run scoreboard players set #moved daisukes.heisenberg 1
execute unless score #dy daisukes.heisenberg matches 0 if block ~ ~ ~ #minecraft:climbable run scoreboard players set #moved daisukes.heisenberg 1
execute if score @s daisukes.heis_gap < #first daisukes.heisenberg if predicate daisukes:heisenberg/walking run scoreboard players set #moved daisukes.heisenberg 1

# Es mou: tot torna a comencar (el primer salt, quan porti #first ticks quiet)
execute if score #moved daisukes.heisenberg matches 1 run scoreboard players operation @s daisukes.heis_gap = #first daisukes.heisenberg
execute if score #moved daisukes.heisenberg matches 1 run scoreboard players operation @s daisukes.heis_wait = #first daisukes.heisenberg

# Quiet: compte enrere fins al proxim salt
execute if score #moved daisukes.heisenberg matches 0 run function daisukes:modifiers/heisenberg/still

# Guarda on es (si acaba de saltar, on ha arribat) per comparar-ho al tick seguent
scoreboard players operation @s daisukes.heis_x = #x daisukes.heisenberg
scoreboard players operation @s daisukes.heis_y = #y daisukes.heisenberg
scoreboard players operation @s daisukes.heis_z = #z daisukes.heisenberg
