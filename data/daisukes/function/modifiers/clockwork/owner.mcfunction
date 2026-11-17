execute unless score @s daisukes.cw matches 1.. run return run function daisukes:modifiers/clockwork/remove
scoreboard players operation #o daisukes.cw = @s daisukes.cw
scoreboard players set #own daisukes.cw 0
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] if score @s daisukes.cw = #o daisukes.cw run scoreboard players set #own daisukes.cw 1
execute if score #own daisukes.cw matches 0 run function daisukes:modifiers/clockwork/remove
