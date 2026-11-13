# Ticks que falten per al canvi de modificador
scoreboard players operation #left daisukes.timer = #timer_threshold daisukes.timer
scoreboard players operation #left daisukes.timer -= #timer daisukes.timer

# Despres del canvi, la bossbar ensenya els modificadors nous 3 segons i s'amaga
execute if score #reveal daisukes.timer matches 1 run bossbar set daisukes:countdown visible false
execute if score #reveal daisukes.timer matches 1.. run scoreboard players remove #reveal daisukes.timer 1

# El compte enrere nomes actua els ultims 5 segons (100 ticks)
execute unless score #left daisukes.timer matches 1..100 run return 0

# La barra es buida suaument
execute store result bossbar daisukes:countdown value run scoreboard players get #left daisukes.timer

# Cada segon: numero, color i so
execute if score #left daisukes.timer matches 100 run function daisukes:engine/countdown/5
execute if score #left daisukes.timer matches 80 run function daisukes:engine/countdown/4
execute if score #left daisukes.timer matches 60 run function daisukes:engine/countdown/3
execute if score #left daisukes.timer matches 40 run function daisukes:engine/countdown/2
execute if score #left daisukes.timer matches 20 run function daisukes:engine/countdown/1
