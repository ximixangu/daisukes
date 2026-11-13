scoreboard players set #reveal daisukes.timer 0
bossbar set daisukes:countdown players @a
bossbar set daisukes:countdown color yellow
bossbar set daisukes:countdown name ["", {"nbt": "countdown_label", "storage": "daisukes:temp","interpret": true, "color": "gray"}, {"text": "2", "color": "gold", "bold": true}]
bossbar set daisukes:countdown visible true

execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
