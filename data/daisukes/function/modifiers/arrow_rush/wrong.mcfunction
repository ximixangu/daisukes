# Tecla equivocada: 0,4 s menys, so greu i una creu vermella al costat del pas (fins al seguent encert)
scoreboard players remove @s daisukes.rush 8
execute if score @s daisukes.rush matches ..0 run scoreboard players set @s daisukes.rush 1
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.7 0.6
$title @s subtitle {"text": "", "bold": true, "extra": [{"text": "✘ ", "color": "#FF4D4D"}, {"nbt": "p.$(id).cur", "storage": "daisukes:rush", "interpret": true}]}
title @s title ""
