# Animacio de victoria (victory/start; per provar-la sense acabar la partida: /function daisukes:debug/victory)
#  - "VICTORY!" lletra a lletra amb una escala que puja; despres el titol sencer amb la fanfara (victory/title)
#  - Durant #victory_seconds, petards i confeti al voltant de cada jugador cada mig segon (victory/beat)
#  - Als 10 s, quan el drac ja ha acabat la seva animacio de mort, sona el disc "chirp"
scoreboard players set #title_step daisukes.victory 0
scoreboard players set #beat daisukes.victory 0

# Un cop de petards cada mig segon: 2 per cada segon de #victory_seconds
scoreboard players operation #fireworks_beats daisukes.victory = #victory_seconds daisukes.config
scoreboard players operation #fireworks_beats daisukes.victory += #victory_seconds daisukes.config

# El bucle continua fins que s'acaba la canco (comenca al cop 18 i dura 185 s = 370 cops), o els petards si duren mes
scoreboard players set #beat_end daisukes.victory 392
scoreboard players operation #beat_end daisukes.victory > #fireworks_beats daisukes.victory

stopsound @a record minecraft:music_disc.chirp
title @a reset
title @a times 0t 2s 10t
schedule clear daisukes:victory/beat
schedule function daisukes:victory/title 1t replace
