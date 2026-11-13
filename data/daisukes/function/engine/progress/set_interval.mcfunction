scoreboard players operation #timer_threshold daisukes.timer = #new_threshold daisukes.math

# Si amb el nou interval el canvi ja tocaria (o el compte enrere ja anava), es tornen a comptar 5 s
scoreboard players operation #cap daisukes.math = #timer_threshold daisukes.timer
scoreboard players remove #cap daisukes.math 101
execute if score #timer daisukes.timer > #cap daisukes.math run scoreboard players operation #timer daisukes.timer = #cap daisukes.math

# Si el compte enrere anava i ara queda lluny, s'amaga la bossbar (excepte si ensenya els modificadors nous)
execute if score #reveal daisukes.timer matches ..0 run bossbar set daisukes:countdown visible false
