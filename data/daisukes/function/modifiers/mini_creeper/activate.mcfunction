# Soul Escape. Cada mob a menys de 96 blocs d'un jugador porta un marker a sobre (de passatger). Quan un jugador
# en mata un (avancament mini_creeper/kill), el marker diu on es el cos i en surt l'anima (soul/birth).
#  soul: valors globals (#...) i, a cada anima, els ticks que porta en la fase
#  soul_id: identificador de cada jugador i, a cada anima, el del jugador que la va matar (a qui empaita)
# Fases de l'anima (etiquetes): soul_launch (surt disparada del cos), soul_hunt (volta al voltant del jugador),
# soul_strike (recula 0,6 s per avisar i es llanca contra ell)
scoreboard objectives add daisukes.soul dummy
scoreboard objectives add daisukes.soul_id dummy
scoreboard players set #clock daisukes.soul 0
scoreboard players set #2 daisukes.soul 2
scoreboard players set #4 daisukes.soul 4
scoreboard players set #12 daisukes.soul 12
scoreboard players set #24 daisukes.soul 24
# Ja s'ha activat (tick ho mira: si el pack s'actualitza a mitja partida amb el modificador actiu, falta aixo)
data modify storage daisukes:soul ready set value true

# =====================================================================
#  CONFIGURACIO
# =====================================================================
# Com a molt aquestes animes darrere de cada jugador; les que en sobren s'escapen cap al cel sense fer res
scoreboard players set #cap daisukes.soul 6
# Mal de l'esclat: soul/burst. Velocitats i distancies: soul/launch (sortir del cos), soul/hunt (voltar)
# i soul/strike (avis i atac)
# =====================================================================

# Restes d'una activacio anterior (i el scoreboard que feia servir la versio Creeper)
function daisukes:modifiers/mini_creeper/clear
scoreboard objectives remove daisukes.mini_creeper

# Entrada: un murmuri d'animes al voltant de cada jugador
execute at @e[type=minecraft:player,gamemode=!spectator] run particle minecraft:soul ~ ~1 ~ 1.2 0.6 1.2 0.02 16 force
execute as @a at @s run playsound minecraft:particle.soul_escape hostile @s ~ ~ ~ 1 0.7
