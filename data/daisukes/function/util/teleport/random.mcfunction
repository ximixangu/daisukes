# Teletransport a l'atzar a prop, com la fruita de chorus (el fan servir Heisenberg, Chorus Food i Ender Syndrome).
# Com a l'entitat que salta (normalment un jugador) i als seus peus:
#   execute at @s run function daisukes:util/teleport/random {near: 2, far: 8}
#
# Busca una columna a l'atzar entre near i far blocs (en qualsevol direccio; near ha de ser mes petit que far)
# i hi baixa nomes per l'aire, des d'1 bloc per sobre dels peus fins a 16 per sota, fins a trobar terra ferm.
# No travessa mai roca (de dins d'un tunel no apareix a una cova de sota ni a la superficie), no arriba mai al
# sostre del Nether, i evita aigua, lava, foc i el que hi ha a #daisukes:teleport/no_floor.
# Fins a 20 intents. Si salta, deixa #done daisukes.tp a 1 i torna 1; si no troba lloc, #done a 0 i falla.
# Nomes fa la purpurina del lloc d'on surt: els efectes de l'arribada, cadascu els seus.
scoreboard players set #done daisukes.tp 0
scoreboard players set #tries daisukes.tp 20
$function daisukes:util/teleport/try {near: $(near), far: $(far)}
execute if score #done daisukes.tp matches 1 run return 1
return fail
