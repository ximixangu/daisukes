scoreboard players add #ring daisukes.hush 1
execute if score #ring daisukes.hush matches 10.. run scoreboard players set #ring daisukes.hush 0

# L'avis i el silenci van abans dels jugadors: aixi les boques noves pugen el tick seguent (suau)
execute if score #phase daisukes.hush matches 1.. run function daisukes:modifiers/hush/hush
execute as @e[type=player,gamemode=!spectator] at @s run function daisukes:modifiers/hush/player
scoreboard players reset @a daisukes.hush_walk
scoreboard players reset @a daisukes.hush_sprint
scoreboard players reset @a daisukes.hush_jump
scoreboard players reset @a daisukes.hush_hit
execute if score #phase daisukes.hush matches 0 run function daisukes:modifiers/hush/listen
