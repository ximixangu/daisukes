# jeb_ s'acomiada: cada ovella esclata
execute as @e[type=minecraft:sheep,tag=daisukes.jeb_sheep] at @s run function daisukes:modifiers/jeb/farewell
scoreboard objectives remove daisukes.jeb
scoreboard objectives remove daisukes.jeb_deaths
