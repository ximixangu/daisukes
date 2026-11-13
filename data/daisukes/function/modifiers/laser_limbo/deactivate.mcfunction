execute as @e[type=block_display,tag=daisukes.laser] at @s run function daisukes:modifiers/laser_limbo/vanish
scoreboard objectives remove daisukes.laser
scoreboard objectives remove daisukes.laser_cd
scoreboard objectives remove daisukes.laser_x
scoreboard objectives remove daisukes.laser_z
# Per si algun laser s'ha quedat en un chunk sense carregar (mon tancat amb el modificador actiu)
schedule function daisukes:modifiers/laser_limbo/leftovers 30s
