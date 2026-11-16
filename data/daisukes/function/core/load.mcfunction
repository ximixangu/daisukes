# En carregar el mon i amb /reload. Prepara scoreboards i configuracio.
# El repte NO comenca sol: cal /function daisukes:start (o daisukes:reset). Si ja estava en marxa
# (mon tancat o /reload a mitja partida), continua tal com era, sense titol (engine/resume).

# Els scoreboards es creen abans de la tria (si no, la primera tirada d'un món nou fallava)
scoreboard objectives add daisukes.timer dummy
scoreboard objectives add daisukes.engine dummy
scoreboard objectives add daisukes.math dummy
scoreboard objectives add daisukes.config dummy
# Teletransport a l'atzar compartit (util/teleport: Heisenberg, Chorus Food, Ender Syndrome)
scoreboard objectives add daisukes.tp dummy
# Jugadors que entren al servidor, nous o que tornen (core/player_join)
scoreboard objectives add daisukes.left minecraft.custom:minecraft.leave_game
# Victoria quan mor el drac de l'End (victory/)
scoreboard objectives add daisukes.victory dummy
# Derrota quan mor qualsevol jugador (defeat/)
scoreboard objectives add daisukes.deaths deathCount

# =====================================================================
#  CONFIGURACIO  (tots els temps en SEGONS)
#  Despres de canviar-la: /reload  (al xat surt la configuracio aplicada)
#  Tambe es pot canviar en partida, sense /reload, amb:
#    /scoreboard players set #change_seconds daisukes.config 30
# =====================================================================

# Cada quants segons canvien els modificadors (minim 6)
scoreboard players set #change_seconds daisukes.config 120

# ---- Quants modificadors surten a cada canvi: per fases, que nomes pugen (engine/progress/update_count) ----
# 1. Al principi
scoreboard players set #start_count daisukes.config 1

# 2. Dificultat 2-1: passats aquests segons (2400 = 40 min) o en entrar al Nether, el que passi abans.
#    A cada canvi alterna #alternate_high i #alternate_low (2, 1, 2, 1...). 0 segons = nomes amb el Nether
scoreboard players set #alternate_seconds daisukes.config 2400
scoreboard players set #alternate_high daisukes.config 2
scoreboard players set #alternate_low daisukes.config 1

# 3. Quan ja s'ha aconseguit una vara de blaze (Into Fire) i s'ha trobat un bastio (Those Were the Days),
#    en qualsevol ordre
scoreboard players set #nether_goals_count daisukes.config 2

# 4. Dificultat 3-2: aquests segons despres de la fase 3 (2400 = 40 min).
#    A cada canvi alterna #late_high i #late_low (3, 2, 3, 2...)
scoreboard players set #late_seconds daisukes.config 2400
scoreboard players set #late_high daisukes.config 3
scoreboard players set #late_low daisukes.config 2

# 5. En arribar a la fortalesa (stronghold, Eye Spy)
scoreboard players set #stronghold_count daisukes.config 3

# 6. A l'End (batalla contra el drac)
scoreboard players set #end_count daisukes.config 4

# Cada quants segons canvien els modificadors un cop algu ha entrat a l'End (minim 6). 0 = igual que #change_seconds
scoreboard players set #change_seconds_end daisukes.config 60

# Maxim de modificadors alhora. 0 = sense limit
scoreboard players set #max_count daisukes.config 0

# Quants segons duren els petards de la victoria quan mor el drac. 0 = sense petards (titol i musica si)
scoreboard players set #victory_seconds daisukes.config 90

# =====================================================================

# Constants
scoreboard players set #20 daisukes.math 20
scoreboard players set #60 daisukes.math 60

# Hi ha una partida en marxa? (mon tornat a obrir o /reload a mitja partida). Llavors continua tal com era:
# els mateixos modificadors actius i el mateix temps fins al proxim canvi (engine/resume).
# Si no (mon nou, aturat, guanyat o /function daisukes:reset), no queda res actiu de la tirada anterior
scoreboard players set #resume daisukes.math 0
execute if score #engine_active daisukes.engine matches 1 if score #initialized daisukes.engine matches 1 if score #elapsed daisukes.engine matches 1.. unless score #victory daisukes.engine matches 1 run scoreboard players set #resume daisukes.math 1

# Bossbar del compte enrere (amagada fins als ultims 5 segons)
function daisukes:engine/countdown/setup

execute if score #resume daisukes.math matches 0 run function daisukes:engine/clear

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
function daisukes:engine/progress/recalc

# Victoria (victory/watch): es torna a comptar el drac des de zero
scoreboard players set #dragons_before daisukes.victory 0

# Si aquesta partida ja s'ha guanyat (drac mort), el repte continua aturat fins a /function daisukes:reset
execute if score #victory daisukes.engine matches 1 run function daisukes:engine/stop

# El repte no es posa en marxa en carregar: en un mon nou (o si s'havia aturat amb debug/stop) es queda
# aturat fins a /function daisukes:start o daisukes:reset. #engine_active es guarda al mon:
#  - si ja estava en marxa, continua SENSE titol ni tirada nova (engine/resume)
#  - si s'havia fet start pero encara no havia avancat (des de la consola sense ningu connectat),
#    la presentacio continua pendent (engine/begin)
execute if score #resume daisukes.math matches 1 run function daisukes:engine/resume
execute if score #engine_active daisukes.engine matches 1 if score #elapsed daisukes.engine matches ..0 run function daisukes:engine/begin

# Repte sense comencar: explicacio breu al xat i la comanda de start (core/welcome). En obrir el mon el load
# va abans que entri el jugador, aixi que surt des de core/tick, 2 s (40 ticks) despres que hi hagi algu
scoreboard players set #welcome daisukes.timer 0
execute unless score #engine_active daisukes.engine matches 1 if score #elapsed daisukes.engine matches ..0 run scoreboard players set #welcome daisukes.timer 40

# Resum al xat de la configuracio aplicada
# function daisukes:debug/status
