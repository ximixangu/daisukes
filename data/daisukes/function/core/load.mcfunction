# En carregar el mon i amb /reload. Prepara scoreboards i configuracio, desactiva el que hi hagues actiu
# i deixa el repte a punt: quan hi hagi algu connectat surt el titol (engine/intro), compte enrere de 5 s
# i primer modificador.

# Els scoreboards es creen abans de la tria (si no, la primera tirada d'un món nou fallava)
scoreboard objectives add daisukes.timer dummy
scoreboard objectives add daisukes.engine dummy
scoreboard objectives add daisukes.math dummy
scoreboard objectives add daisukes.config dummy
# Teletransport a l'atzar compartit (util/teleport: Heisenberg, Chorus Food, Ender Syndrome)
scoreboard objectives add daisukes.tp dummy
# Jugadors que entren al servidor, nous o que tornen (core/player_join)
scoreboard objectives add daisukes.left minecraft.custom:minecraft.leave_game

# =====================================================================
#  CONFIGURACIO  (tots els temps en SEGONS)
#  Despres de canviar-la: /reload  (al xat surt la configuracio aplicada)
#  Tambe es pot canviar en partida, sense /reload, amb:
#    /scoreboard players set #change_seconds daisukes.config 30
# =====================================================================

# Modificadors actius a l'inici de la partida
scoreboard players set #start_count daisukes.config 1

# Cada quants segons canvien els modificadors (minim 6)
scoreboard players set #change_seconds daisukes.config 240

# Cada quants segons de partida augmenta el nombre de modificadors (1200 = 20 min). 0 = no augmenta mai
scoreboard players set #escalate_seconds daisukes.config 1200

# Quants modificadors s'afegeixen cada cop (1 => 1, 2, 3, 4... / 2 => 1, 3, 5, 7...)
scoreboard players set #escalate_step daisukes.config 1

# Minim de modificadors quan algun jugador entra al Nether per primer cop. 0 = desactivat
scoreboard players set #nether_count daisukes.config 2

# Minim de modificadors quan algun jugador entra a l'End per primer cop (drac). 0 = desactivat
scoreboard players set #end_count daisukes.config 5

# Cada quants segons canvien els modificadors un cop algu ha entrat a l'End (minim 6). 0 = igual que #change_seconds
scoreboard players set #change_seconds_end daisukes.config 60

# Maxim de modificadors alhora. 0 = sense limit
scoreboard players set #max_count daisukes.config 0

# =====================================================================

# Constants
scoreboard players set #20 daisukes.math 20
scoreboard players set #60 daisukes.math 60

# Bossbar del compte enrere (amagada fins als ultims 5 segons)
function daisukes:engine/countdown/setup

# El que hi hagues actiu (mon tancat o /reload a mitja partida) es desactiva i no queda res de la tirada anterior
execute if data storage daisukes:state active[0] run function daisukes:engine/deactivate_execute
data remove storage daisukes:state active
data remove storage daisukes:temp display_texts
data remove storage daisukes:temp chat_texts

data modify storage daisukes:registry modifiers set value []
data remove storage daisukes:registry incompatible
data remove storage daisukes:registry conflicts
data remove storage daisukes:temp pool

function #daisukes:register

# Converteix les incompatibilitats declarades als register en una taula reciproca (A no amb B => B no amb A)
function daisukes:engine/incompat/build

# Estat de la partida (temps jugat, Nether, End). Es guarda al mon: NO es reinicia amb /reload
# ni en tornar a entrar. Nomes es reinicia en un mon nou o amb /function daisukes:reset
execute unless score #initialized daisukes.engine matches 1 run function daisukes:engine/progress/init

# Interval i nombre de modificadors segons la configuracio i l'estat (sense avisos)
scoreboard players set #silent daisukes.math 1
scoreboard players set #current_count daisukes.engine -1
function daisukes:engine/progress/update_interval
function daisukes:engine/progress/update_count
scoreboard players set #silent daisukes.math 0

# Repte en marxa, començant per la presentacio (surt en quant hi hagi algu connectat).
# El primer canvi arriba quan el titol ja ha marxat (105 ticks) i s'ha acabat el compte enrere (100 ticks)
scoreboard players set #engine_active daisukes.engine 1
scoreboard players set #intro daisukes.engine 1
data modify storage daisukes:temp countdown_label set value "Challenge starts in "
scoreboard players operation #timer daisukes.timer = #timer_threshold daisukes.timer
scoreboard players remove #timer daisukes.timer 206

# Resum al xat de la configuracio aplicada
function daisukes:debug/status
