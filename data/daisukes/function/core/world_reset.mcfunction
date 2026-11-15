# Servidor amb Fahare: algu es al limbo (fahare:limbo), es a dir, Fahare esta creant un mon nou amb una altra
# llavor (ho crida core/tick cada tick mentre hi son). El scoreboard i el storage son de tot el servidor, aixi
# que la partida del datapack es reinicia aqui: partida nova i SENSE comencar, com en un mon nou.
# Quan ja son al mon nou, surt l'explicacio amb la comanda de start (core/welcome, 2 s despres de sortir del limbo)
scoreboard players set #welcome daisukes.timer 40

# Ja esta reiniciada (o no havia comencat)
execute unless score #engine_active daisukes.engine matches 1 if score #elapsed daisukes.engine matches ..0 run return 0

function daisukes:engine/stop
function daisukes:engine/progress/init
