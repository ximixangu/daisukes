# Temps esgotat: et disparen les fletxes que falten. Mal: 2 + 2 per pas que faltava (maxim 12), menys a l'escalfament
$execute store result score #x daisukes.rush run data get storage daisukes:rush p.$(id).rest
scoreboard players add #x daisukes.rush 1
scoreboard players operation #y daisukes.rush = #x daisukes.rush
scoreboard players operation #y daisukes.rush *= #2 daisukes.rush
scoreboard players add #y daisukes.rush 2
execute if score #y daisukes.rush matches 13.. run scoreboard players set #y daisukes.rush 12
execute store result storage daisukes:rush tmp.dmg int 1 run scoreboard players get #y daisukes.rush
execute if score #warm daisukes.rush matches 0 run function daisukes:modifiers/arrow_rush/shoot with storage daisukes:rush tmp
# Centre: ✘ MISS. A dalt: una ✘ per cada pas que faltava
title @s times 0 16 8
title @s subtitle {"text": "✘ MISS", "color": "#FF4D4D", "bold": true}
title @s title ""
function daisukes:modifiers/arrow_rush/cross with storage daisukes:rush tmp
$bossbar set daisukes:rush_$(id) name {"nbt": "p.$(id).done[]", "storage": "daisukes:rush", "interpret": true, "separator": ""}
$bossbar set daisukes:rush_$(id) value 0
scoreboard players set @s daisukes.rush -24
scoreboard players set @s daisukes.rush_a 0
scoreboard players set @s daisukes.rush_k 0
