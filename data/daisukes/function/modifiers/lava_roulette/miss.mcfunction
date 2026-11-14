# Ningu tenia al voltant cap bloc que pogues sortir (tots nedant, volant...): aquesta tirada no crema res
title @a times 3t 30t 10t
title @a subtitle {"text": "...nothing to burn this time", "color": "gray", "italic": true}
title @a title ""
execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.707107
bossbar set daisukes:lava visible false
scoreboard players set #phase daisukes.lava 0
scoreboard players operation #t daisukes.lava = #rest daisukes.lava
