scoreboard players set #reveal daisukes.timer 0
bossbar set daisukes:countdown players @a
bossbar set daisukes:countdown color green
bossbar set daisukes:countdown name ["", {"text": "Modifier change in ", "color": "gray"}, {"text": "5", "color": "#55FF55", "bold": true}]
bossbar set daisukes:countdown visible true

execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.75
