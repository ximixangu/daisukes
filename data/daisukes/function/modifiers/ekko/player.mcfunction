# Com a cada jugador viu (els morts no hi son: el seu eco queda orfe i s'esvaeix). Si ha mort, ha tornat a entrar o
# es espectador, perd l'eco sense tornar-hi
execute if score @s daisukes.ek_dead matches 1.. run function daisukes:modifiers/ekko/drop
execute if score @s daisukes.ek_left matches 1.. run function daisukes:modifiers/ekko/drop
execute if entity @s[gamemode=spectator] run return run function daisukes:modifiers/ekko/drop
execute unless score @s daisukes.ek_id matches 1.. run function daisukes:modifiers/ekko/join

execute if score @s daisukes.ek_hp matches 1.. run function daisukes:modifiers/ekko/health/hold
execute if entity @s[tag=daisukes.ek_fall] run function daisukes:modifiers/ekko/grace/tick
scoreboard players remove @s[scores={daisukes.ek_cd=1..}] daisukes.ek_cd 1

execute if score @s daisukes.ek_t matches 1.. run function daisukes:modifiers/ekko/wait

# El Shift compta quan es prem, no mentre es mante premut (at @s: si acaba de tornar, ja no es on era)
execute if predicate daisukes:ekko/sneak unless entity @s[tag=daisukes.ek_held] at @s run function daisukes:modifiers/ekko/sneak
execute unless predicate daisukes:ekko/sneak run tag @s[tag=daisukes.ek_held] remove daisukes.ek_held
