scoreboard players add #clock daisukes.king 1
scoreboard players operation #t daisukes.king = #clock daisukes.king
scoreboard players operation #t daisukes.king %= #20 daisukes.king
scoreboard players operation #q daisukes.king = #t daisukes.king
scoreboard players operation #q daisukes.king %= #5 daisukes.king

# Entrada: fanfarra de trompeta per a tothom
execute if score #clock daisukes.king matches ..15 run function daisukes:modifiers/king/herald

# Corones, cada tick: el Rei es viu? On vola? Segueix qui la porta?
execute as @e[type=minecraft:text_display,tag=daisukes.king_crown] at @s run function daisukes:modifiers/king/crown/tick

# Cada mig segon: la cort de cada Rei es invencible (i cada 2 s, fils daurats cap al Rei)
execute if score #t daisukes.king matches 0 run function daisukes:modifiers/king/court/pass
execute if score #t daisukes.king matches 10 run function daisukes:modifiers/king/court/pass

# Cada segon (a partir dels 2 s): Reis nous, hereus, abdicacions i revisions
execute if score #t daisukes.king matches 5 if score #clock daisukes.king matches 40.. run function daisukes:modifiers/king/second

# Barra de cada cort (vida del Rei o interregne), cada 5 ticks
execute if score #q daisukes.king matches 2 as @e[type=minecraft:text_display,tag=daisukes.king_crown] at @s run function daisukes:modifiers/king/bar/tick

# Espera entre avisos "Protected by the King" de cada jugador
scoreboard players remove @a[scores={daisukes.king=1..}] daisukes.king 1

# Qui ha mort un Rei (avancament king/regicide) ja ha rebut la corona en aquest tick (crown/regicide)
tag @a remove daisukes.king_slayer
