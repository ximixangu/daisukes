# Llargada 3 + nivell/2 (3, 4, 4, 5, 5) i lectura 22 - 2 x nivell (20 ... 12 ticks)
scoreboard players operation #len daisukes.rush = #lv daisukes.rush
scoreboard players operation #len daisukes.rush /= #2 daisukes.rush
scoreboard players add #len daisukes.rush 3
scoreboard players set #t daisukes.rush 22
scoreboard players operation #t daisukes.rush -= #lv daisukes.rush
scoreboard players operation #t daisukes.rush -= #lv daisukes.rush
# Temps per pulsacio (ticks) segons el nivell
execute if score #lv daisukes.rush matches 1 run scoreboard players set #b daisukes.rush 14
execute if score #lv daisukes.rush matches 2 run scoreboard players set #b daisukes.rush 12
execute if score #lv daisukes.rush matches 3 run scoreboard players set #b daisukes.rush 10
execute if score #lv daisukes.rush matches 4 run scoreboard players set #b daisukes.rush 8
execute if score #lv daisukes.rush matches 5 run scoreboard players set #b daisukes.rush 7
function daisukes:modifiers/arrow_rush/gen/step
