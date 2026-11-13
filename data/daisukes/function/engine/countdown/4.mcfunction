scoreboard players set #reveal daisukes.timer 0
bossbar set daisukes:countdown players @a
bossbar set daisukes:countdown color green
bossbar set daisukes:countdown name ["", {"text": "Modifier change in ", "color": "gray"}, {"text": "4", "color": "#B5F23D", "bold": true}]
bossbar set daisukes:countdown visible true

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
