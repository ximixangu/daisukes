# Interval que toca ara: el normal, o el de l'End si algu hi ha entrat
scoreboard players operation #new_threshold daisukes.math = #change_seconds daisukes.config
execute if score #end_reached daisukes.engine matches 1 if score #change_seconds_end daisukes.config matches 1.. run scoreboard players operation #new_threshold daisukes.math = #change_seconds_end daisukes.config

# Minim 6 s perque hi capiga el compte enrere de 5 s. Segons -> ticks
execute if score #new_threshold daisukes.math matches ..5 run scoreboard players set #new_threshold daisukes.math 6
scoreboard players operation #new_threshold daisukes.math *= #20 daisukes.math

execute unless score #new_threshold daisukes.math = #timer_threshold daisukes.timer run function daisukes:engine/progress/set_interval
