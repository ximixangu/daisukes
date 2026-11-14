scoreboard players add #clock daisukes.rush 1
# Entrada (1,5 s), jingle de 8 notes i escalfament amb el codi Konami (3,5 s)
execute if score #clock daisukes.rush matches 30 as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/arrow_rush/intro
execute if score #clock daisukes.rush matches 30..54 run function daisukes:modifiers/arrow_rush/jingle
execute if score #clock daisukes.rush matches 70 run function daisukes:modifiers/arrow_rush/go

# Ronda nova quan fa una estona que tothom ha acabat (descans), amb dos avisos
execute unless entity @a[scores={daisukes.rush=1..}] run scoreboard players remove #next daisukes.rush 1
execute if score #next daisukes.rush matches 20 as @e[type=minecraft:player,gamemode=!spectator] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.6 1
execute if score #next daisukes.rush matches 10 as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/arrow_rush/ready
execute if score #next daisukes.rush matches ..0 run function daisukes:modifiers/arrow_rush/go

# Clics a les caixes de CLICK: compten per a qui ha clicat
execute as @e[type=minecraft:interaction,tag=daisukes.rush_box] if data entity @s attack run function daisukes:modifiers/arrow_rush/click
execute as @e[type=minecraft:interaction,tag=daisukes.rush_box] if data entity @s interaction run function daisukes:modifiers/arrow_rush/click

# Qui ha mort, ha sortit i tornat o s'ha fet espectador es queda sense sequencia (i sense mal)
execute as @a[scores={daisukes.rush_d=1..}] run function daisukes:modifiers/arrow_rush/cancel
execute as @a[scores={daisukes.rush_l=1..}] run function daisukes:modifiers/arrow_rush/cancel
execute as @a[gamemode=spectator,scores={daisukes.rush=1..}] run function daisukes:modifiers/arrow_rush/cancel
execute as @a[gamemode=spectator,scores={daisukes.rush=..-1}] run function daisukes:modifiers/arrow_rush/cancel

execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/arrow_rush/player

# Caixes de clic que ningu ha seguit aquest tick (el pas ja s'ha fet o l'amo ja no hi es)
kill @e[type=minecraft:interaction,tag=daisukes.rush_box,tag=!daisukes.rush_seen]
tag @e[type=minecraft:interaction,tag=daisukes.rush_seen] remove daisukes.rush_seen
