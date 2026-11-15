# Dificultat 2-1 (engine/next, despres de cada tirada): la seguent en treu l'altre nombre (2, 1, 2, 1...)
scoreboard players add #alternate daisukes.engine 1
execute if score #alternate daisukes.engine matches 2.. run scoreboard players set #alternate daisukes.engine 0
