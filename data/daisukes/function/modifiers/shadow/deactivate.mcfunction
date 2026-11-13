execute as @e[type=mannequin,tag=daisukes.shadow] at @s run function daisukes:modifiers/shadow/vanish

scoreboard objectives remove daisukes.shadow
scoreboard objectives remove daisukes.shadow_x
scoreboard objectives remove daisukes.shadow_z

# Per si alguna ombra s'ha quedat en un chunk sense carregar (mon tancat amb el modificador actiu)
schedule function daisukes:modifiers/shadow/leftovers 30s
