# Compte enrere de cada jugador fins a la seva propera mirada
execute as @a[gamemode=!spectator] at @s run function daisukes:modifiers/gorguns_gaze/player_tick

# Animacio de les mirades
execute as @e[type=minecraft:text_display,tag=daisukes.gorgun_eye] at @s run function daisukes:modifiers/gorguns_gaze/eye_tick

# Jugadors petrificats
execute as @a[scores={daisukes.petrified=1..}] at @s run function daisukes:modifiers/gorguns_gaze/stone_tick
