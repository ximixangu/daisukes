# La ruleta s'atura: acord agradable, espurnes i les figures es fan una mica més grans
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.8 1
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1.26
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1.5
execute as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1.4
execute as @e[type=player] at @s anchored eyes positioned ^ ^-0.42 ^1.6 run particle minecraft:end_rod ~ ~ ~ 0.9 0.08 0.08 0.01 24
execute as @e[type=item_display,tag=daisukes.shift_fx] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{scale:[0.24f,0.24f,0.24f]}}
bossbar set daisukes:shift color pink
