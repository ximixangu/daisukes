# Salta al seguent canvi de modificadors: comenca ara el compte enrere de 5 s (tambe si la presentacio estava pendent)
# /function daisukes:debug/skip
scoreboard players set #intro daisukes.engine 0
scoreboard players operation #timer daisukes.timer = #timer_threshold daisukes.timer
scoreboard players remove #timer daisukes.timer 101
