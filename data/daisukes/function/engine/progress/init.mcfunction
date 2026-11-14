# Partida nova: temps jugat a 0, Nether / End sense visitar i sense victoria
scoreboard players set #elapsed daisukes.engine 0
scoreboard players set #nether_reached daisukes.engine 0
scoreboard players set #end_reached daisukes.engine 0
scoreboard players set #victory daisukes.engine 0
scoreboard players set #slain daisukes.victory 0
scoreboard players set #initialized daisukes.engine 1

# Si encara anava la celebracio de la partida anterior (petards, musica), s'acaba
function daisukes:victory/clear
