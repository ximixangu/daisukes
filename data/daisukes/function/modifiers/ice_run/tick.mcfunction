# Rellotge propi del modificador (nomes avança mentre esta actiu)
scoreboard players add #now daisukes.ice_run 1
scoreboard players operation #break_at daisukes.ice_run = #now daisukes.ice_run
scoreboard players operation #break_at daisukes.ice_run += #delay daisukes.ice_run
scoreboard players operation #retry_at daisukes.ice_run = #now daisukes.ice_run
scoreboard players add #retry_at daisukes.ice_run 20

# Gel sota cada jugador viu que toca terra (un de mort no: les seves coses cauen alla)
execute as @e[type=minecraft:player,gamemode=!spectator] at @s if predicate daisukes:on_ground run function daisukes:modifiers/ice_run/check_floor

# Trenca els blocs del rastre que ja toquen
execute if data storage daisukes:ice_run trail[0] run function daisukes:modifiers/ice_run/break_due
