function daisukes:modifiers/gorguns_gaze/reset_timer

# Lloc a l'atzar en una esfera al voltant del jugador: davant o als costats (fins a ±110 graus
# de cap on mira), de 45 graus per sobre a 10 per sota dels ulls, entre 7 i 11 blocs
execute store result storage daisukes:gorgun spawn.yaw int 1 run random value -110..110
execute store result storage daisukes:gorgun spawn.pitch int 1 run random value -45..10
execute store result storage daisukes:gorgun spawn.dist int 1 run random value 7..11
function daisukes:modifiers/gorguns_gaze/summon_eye with storage daisukes:gorgun spawn
