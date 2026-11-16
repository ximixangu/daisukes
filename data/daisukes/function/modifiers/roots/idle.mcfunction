# Esperant la propera tanda. Quan toca, les arrels surten a tothom qui sigui a terra i sense muntura (qui ja es mou
# les esquiva). Si algu salta o va muntat, l'esperen fins a 2 s, i despres surten als que puguin
scoreboard players remove #wait daisukes.roots 1
execute if score #wait daisukes.roots matches 1.. run return 0
execute store result score #all daisukes.roots if entity @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator]
execute store result score #ready daisukes.roots if entity @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,predicate=daisukes:roots/ready]
execute if score #ready daisukes.roots matches 0 run return 0
execute if score #ready daisukes.roots < #all daisukes.roots if score #wait daisukes.roots matches -39.. run return 0
scoreboard players set #round daisukes.roots 1
scoreboard players set #bound daisukes.roots 0
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,predicate=daisukes:roots/ready] at @s run function daisukes:modifiers/roots/start
