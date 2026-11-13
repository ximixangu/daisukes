# Rellotge propi del modificador (nomes avança mentre esta actiu)
scoreboard players add #now daisukes.glass_run 1
scoreboard players operation #break_at daisukes.glass_run = #now daisukes.glass_run
scoreboard players operation #break_at daisukes.glass_run += #delay daisukes.glass_run
scoreboard players operation #retry_at daisukes.glass_run = #now daisukes.glass_run
scoreboard players add #retry_at daisukes.glass_run 20

# Gel sota cada jugador viu que toca terra (un de mort no: les seves coses cauen alla)
execute as @e[type=minecraft:player,gamemode=!spectator] at @s if predicate daisukes:on_ground run function daisukes:modifiers/glass_run/check_floor

# Trenca els blocs del rastre que ja toquen
execute if data storage daisukes:glass_run trail[0] run function daisukes:modifiers/glass_run/break_due
