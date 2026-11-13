scoreboard players set #reveal daisukes.timer 0
bossbar set daisukes:countdown players @a
bossbar set daisukes:countdown color red
bossbar set daisukes:countdown name ["", {"nbt": "countdown_label", "storage": "daisukes:temp", "interpret": true, "color": "gray"}, {"text": "1", "color": "red", "bold": true}]
bossbar set daisukes:countdown visible true

execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1.5
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 2
