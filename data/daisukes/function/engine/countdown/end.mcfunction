# Moment del canvi: so i la bossbar ensenya els modificadors nous durant 3 segons
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1.2
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.4

bossbar set daisukes:countdown players @a
bossbar set daisukes:countdown color white
bossbar set daisukes:countdown value 100
bossbar set daisukes:countdown name ["", {"text": "» ", "color": "white", "bold": true}, {"nbt": "display_texts[]", "storage": "daisukes:temp", "separator": {"text": " + ", "color": "white", "bold": false}, "interpret": true}, {"text": " «", "color": "white", "bold": true}]
execute if data storage daisukes:temp display_texts[0] run bossbar set daisukes:countdown visible true

scoreboard players set #reveal daisukes.timer 60
