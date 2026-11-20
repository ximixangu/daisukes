scoreboard objectives add daisukes.ice_run dummy

# Ticks que dura cada bloc de gel abans de trencar-se (40 = 2 s)
scoreboard players set #delay daisukes.ice_run 50

# Quins blocs es converteixen en gel:
#   0 = els que hi ha sota la hitbox del jugador (els que l'aguanten; rastre d'1 bloc)
#   1 = els 9 blocs de sota (3x3 al voltant del jugador; rastre de 3 blocs)
scoreboard players set #area daisukes.ice_run 0

# Si s'havia desactivat fa un moment i torna a sortir, la neteja pendent es cancel·la i el rastre continua
schedule clear daisukes:modifiers/ice_run/cleanup
