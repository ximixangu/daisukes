# Ronda nova per a tothom alhora. La del tick 70 es l'escalfament (codi Konami, sense mal)
execute store success score #warm daisukes.rush if score #clock daisukes.rush matches 70
# La seguent arriba quan tothom ha acabat i passa el descans: 6 s que baixen fins a 4 s, mes fins a 1 s a l'atzar
execute store result score #next daisukes.rush run random value 0..20
scoreboard players operation #next daisukes.rush += #rest daisukes.rush
execute if score #rest daisukes.rush matches 82.. run scoreboard players remove #rest daisukes.rush 2
# Nivell (no es veu): 1 al principi i +1 cada 30 s (600 ticks) que fa que esta actiu, fins al 4 (a l'1:30)
scoreboard players operation #lv daisukes.rush = #clock daisukes.rush
scoreboard players operation #lv daisukes.rush /= #600 daisukes.rush
scoreboard players add #lv daisukes.rush 1
execute if score #lv daisukes.rush matches 5.. run scoreboard players set #lv daisukes.rush 4
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/arrow_rush/start
