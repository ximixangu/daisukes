scoreboard objectives add daisukes.gorgun dummy
scoreboard objectives add daisukes.petrified dummy

# =====================================================================
#  CONFIGURACIO (en ticks, 20 = 1 s)
# =====================================================================
# Temps entre mirades per a cada jugador: entre #wait_min i #wait_min + #wait_spread
scoreboard players set #wait_min daisukes.gorgun 100
scoreboard players set #wait_spread daisukes.gorgun 20
# Des que apareixen els ulls fins que esclaten (temps per deixar de mirar). Minim 22:
# l'avis sona 20 ticks abans de l'esclat
scoreboard players set #windup daisukes.gorgun 40
# Temps petrificat
scoreboard players set #petrify daisukes.gorgun 160
# =====================================================================

# Restes d'una activacio anterior
kill @e[type=minecraft:text_display,tag=daisukes.gorgun_eye]
execute as @a[scores={daisukes.petrified=1..}] run function daisukes:modifiers/gorguns_gaze/stone_end

# Primera mirada entre 5 i 6 s despres d'activar-se (#wait_min + 0..#wait_spread)
execute as @a run function daisukes:modifiers/gorguns_gaze/reset_timer
