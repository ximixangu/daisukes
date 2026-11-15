scoreboard players add #t daisukes.anchor 1
# Desconnectat, mort, creatiu o espectador: s'allibera. I si tot falla, com a molt 60 s
execute unless entity @e[type=minecraft:player,tag=daisukes.anchor_p,gamemode=!creative,gamemode=!spectator] run return run function daisukes:modifiers/anchor/free
execute if score #t daisukes.anchor matches 1200.. run return run function daisukes:modifiers/anchor/free
execute as @e[type=minecraft:player,tag=daisukes.anchor_p,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/anchor/float
function daisukes:modifiers/anchor/chain_draw
execute if score #pulse daisukes.anchor matches 0.. at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.59 ^ facing entity @a[tag=daisukes.anchor_p,limit=1] feet run function daisukes:modifiers/anchor/pulse

# L'objecte que brilla: cadascu en te un en tot moment (keep). Qui no en te cap per marcar ho torna a provar cada 10 ticks
scoreboard players operation #t10 daisukes.anchor = #t daisukes.anchor
scoreboard players operation #t10 daisukes.anchor %= #10 daisukes.anchor
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/anchor/keep with storage daisukes:anchor m
# Si l'encadenat no te res que pugui brillar (inventari buit...), la cadena es rovella: 1 baula cada 3 s
execute if entity @a[tag=daisukes.anchor_p,tag=daisukes.anchor_m] run scoreboard players set #rust daisukes.anchor 0
execute unless entity @a[tag=daisukes.anchor_p,tag=daisukes.anchor_m] run scoreboard players add #rust daisukes.anchor 1
execute if score #rust daisukes.anchor matches 60.. run function daisukes:modifiers/anchor/rust

# Ambient: espurnes d'anima a la base, glifs a les anelles i una lluissor a l'ull
scoreboard players operation #t5 daisukes.anchor = #t daisukes.anchor
scoreboard players operation #t5 daisukes.anchor %= #5 daisukes.anchor
execute if score #t5 daisukes.anchor matches 0 at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run function daisukes:modifiers/anchor/ambient
