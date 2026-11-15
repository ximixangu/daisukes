# Partida nova: temps jugat a 0, Nether / End sense visitar, sense vara de blaze i sense victoria
scoreboard players set #elapsed daisukes.engine 0
scoreboard players set #nether_reached daisukes.engine 0
scoreboard players set #end_reached daisukes.engine 0
scoreboard players set #blaze_reached daisukes.engine 0
scoreboard players set #blaze_time daisukes.engine 0
scoreboard players set #alternate daisukes.engine 0
# La primera vara de blaze es torna a comptar des de zero
advancement revoke @a only daisukes:progress/blaze_rod
scoreboard players set #victory daisukes.engine 0
scoreboard players set #defeat daisukes.engine 0
scoreboard players set #slain daisukes.victory 0
scoreboard players set #initialized daisukes.engine 1

# Els modificadors desats per debug/stop eren de la partida anterior
data remove storage daisukes:state stopped

# Si encara anava la celebracio de la partida anterior (petards, musica), s'acaba
function daisukes:victory/clear
