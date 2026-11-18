# Interval i nombre de modificadors segons la configuracio i l'estat, sense avisos.
# Ho fan servir core/load i engine/begin (la configuracio pot haver canviat abans de fer start)
scoreboard players set #silent daisukes.math 1
scoreboard players set #current_count daisukes.engine -1
scoreboard players set #current_phase daisukes.engine -1
scoreboard players set #current_top daisukes.engine -1
scoreboard players set #current_low daisukes.engine -1
function daisukes:engine/progress/update_interval
function daisukes:engine/progress/update_count
scoreboard players set #silent daisukes.math 0
