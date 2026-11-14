# Com a jugador, al bloc que ha trepitjat: s'hi pot quedar? (#done = 1 si hi ha terra 3 blocs avall o menys)
scoreboard players set #probe daisukes.ender_step 1
scoreboard players set #h daisukes.ender_step 0
execute align y unless predicate daisukes:ender_step/open run scoreboard players set #done daisukes.ender_step 1
execute if score #done daisukes.ender_step matches 0 align y run function daisukes:modifiers/ender_step/down
