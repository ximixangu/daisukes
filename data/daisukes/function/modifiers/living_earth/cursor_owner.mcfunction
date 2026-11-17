scoreboard players operation #me daisukes.earth = @s daisukes.earth
scoreboard players set #has daisukes.earth 0
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] if score @s daisukes.earth = #me daisukes.earth run scoreboard players set #has daisukes.earth 1
execute if score #has daisukes.earth matches 0 run function daisukes:modifiers/living_earth/remove
