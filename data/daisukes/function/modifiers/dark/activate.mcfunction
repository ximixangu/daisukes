# Comptador de ticks seguits a la foscor de cada jugador
scoreboard objectives add daisukes.dark dummy

# Es fa de nit i el temps s'atura mentre duri el modificador
execute in minecraft:overworld run time set minecraft:midnight
gamerule advance_time false
