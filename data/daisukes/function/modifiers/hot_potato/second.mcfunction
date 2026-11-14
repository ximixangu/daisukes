# Cada segon (i cada mig segon als 3 ultims): tic-tac, numero de la barra i color
scoreboard players operation #sec daisukes.potato = #time daisukes.potato
scoreboard players add #sec daisukes.potato 19
scoreboard players operation #sec daisukes.potato /= #20 daisukes.potato
bossbar set daisukes:potato name ["", {"text": "Hot Potato ", "color": "gold"}, {"score": {"name": "#sec", "objective": "daisukes.potato"}, "color": "white", "bold": true}]
execute at @e[type=item_display,tag=daisukes.potato] run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.8 1.6

# Groc, taronja (5 s) i vermell (3 s, amb el soroll de la metxa de la TNT)
execute if score #time daisukes.potato matches 101.. run data merge entity @e[type=item_display,tag=daisukes.potato,limit=1] {glow_color_override: 16766282}
execute if score #time daisukes.potato matches 61..100 run data merge entity @e[type=item_display,tag=daisukes.potato,limit=1] {glow_color_override: 16747546}
execute if score #time daisukes.potato matches ..60 run data merge entity @e[type=item_display,tag=daisukes.potato,limit=1] {glow_color_override: 16722714}
execute if score #time daisukes.potato matches 61.. run bossbar set daisukes:potato color yellow
execute if score #time daisukes.potato matches ..60 run bossbar set daisukes:potato color red
execute if score #time daisukes.potato matches 60 at @e[type=item_display,tag=daisukes.potato] run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
