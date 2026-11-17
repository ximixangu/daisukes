# Com a un creaking: el seu amo encara hi es i esta lligat?
execute unless score @s daisukes.heart matches 1.. run return run function daisukes:modifiers/heartbound/crumble
scoreboard players operation #o daisukes.heart = @s daisukes.heart
scoreboard players set #own daisukes.heart 0
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,tag=daisukes.heart_bound] if score @s daisukes.heart = #o daisukes.heart run scoreboard players set #own daisukes.heart 1
execute if score #own daisukes.heart matches 0 run function daisukes:modifiers/heartbound/crumble
