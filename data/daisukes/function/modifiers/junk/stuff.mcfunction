# Com a jugador, als seus peus. Brossa a una ranura buida de l'inventari (0-8 barra d'eines, 9-35 la resta):
# primer se'n proven 6 a l'atzar (que quedi escampada per tot arreu) i, si son plenes, totes les altres per ordre.
# Amb l'inventari ple no n'hi entra, pero la de terra continua sortint
scoreboard players set @s daisukes.junk 0
scoreboard players set #junk_try daisukes.math 0
execute store result storage daisukes:temp junk.slot int 1 run random value 0..35
execute if function daisukes:modifiers/junk/try_slot run playsound minecraft:item.bundle.insert player @s ~ ~ ~ 0.7 1.2
