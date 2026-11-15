# Comptador de ticks seguits a la foscor de cada jugador
scoreboard objectives add daisukes.dark dummy

# Es fa de nit i el temps s'atura mentre duri el modificador
function daisukes:util/in_worlds {cmd: "time set minecraft:midnight"}
function daisukes:util/in_worlds {cmd: "gamerule advance_time false"}
