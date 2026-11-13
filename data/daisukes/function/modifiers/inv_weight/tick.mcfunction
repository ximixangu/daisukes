# "Inventory" nomes te les ranures ocupades de l'inventari principal (0-35): la seva llargada son les ranures plenes
execute as @e[type=minecraft:player,gamemode=!spectator] store result score @s daisukes.inv_weight run data get entity @s Inventory
execute as @e[type=minecraft:player,gamemode=!spectator] run function daisukes:modifiers/inv_weight/slow
