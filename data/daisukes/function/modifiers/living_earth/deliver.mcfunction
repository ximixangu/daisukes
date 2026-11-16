# Com al marcador d'un bloc posat: el que acaba de sortir (daisukes.earth_back) va als peus de l'amo, per recollir de seguida
scoreboard players operation #owner daisukes.earth = @s daisukes.earth
execute as @e[type=minecraft:player,gamemode=!spectator] if score @s daisukes.earth = #owner daisukes.earth at @s run tp @e[type=minecraft:item,tag=daisukes.earth_back] ~ ~ ~
execute as @e[type=minecraft:item,tag=daisukes.earth_back] run data merge entity @s {PickupDelay: 0s}
tag @e[type=minecraft:item,tag=daisukes.earth_back] remove daisukes.earth_back
