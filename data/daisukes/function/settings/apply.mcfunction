# Valors que fa servir el motor a partir de les opcions del menu (settings/defaults, menu/save, menu/preset).
# Es crida en cada load i cada cop que canvien; el motor ho aplica al tick seguent (update_interval i update_count)

# Cada quants segons canvien els modificadors (engine/progress/update_interval)
execute if score #change_choice daisukes.config matches 1 run scoreboard players set #change_seconds daisukes.config 30
execute if score #change_choice daisukes.config matches 2 run scoreboard players set #change_seconds daisukes.config 45
execute if score #change_choice daisukes.config matches 3 run scoreboard players set #change_seconds daisukes.config 60
execute if score #change_choice daisukes.config matches 4 run scoreboard players set #change_seconds daisukes.config 90
execute if score #change_choice daisukes.config matches 5 run scoreboard players set #change_seconds daisukes.config 120
execute if score #change_choice daisukes.config matches 6 run scoreboard players set #change_seconds daisukes.config 180
execute if score #change_choice daisukes.config matches 7 run scoreboard players set #change_seconds daisukes.config 240
execute if score #change_choice daisukes.config matches 8 run scoreboard players set #change_seconds daisukes.config 300

# A l'End: la meitat (0 = igual que fora)
scoreboard players set #change_seconds_end daisukes.config 0
execute if score #end_fast daisukes.config matches 1 run scoreboard players operation #change_seconds_end daisukes.config = #change_seconds daisukes.config
execute if score #end_fast daisukes.config matches 1 run scoreboard players operation #change_seconds_end daisukes.config /= #2 daisukes.math

# Per temps: un modificador mes cada... (engine/progress/mode_time)
execute if score #every_choice daisukes.config matches 1 run scoreboard players set #every_seconds daisukes.config 600
execute if score #every_choice daisukes.config matches 2 run scoreboard players set #every_seconds daisukes.config 900
execute if score #every_choice daisukes.config matches 3 run scoreboard players set #every_seconds daisukes.config 1200
execute if score #every_choice daisukes.config matches 4 run scoreboard players set #every_seconds daisukes.config 1800
execute if score #every_choice daisukes.config matches 5 run scoreboard players set #every_seconds daisukes.config 2700
execute if score #every_choice daisukes.config matches 6 run scoreboard players set #every_seconds daisukes.config 3600
