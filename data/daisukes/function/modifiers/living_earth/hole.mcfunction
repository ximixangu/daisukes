# Com a un forat, al seu centre. Hi han posat alguna cosa: ja no torna (en silenci)
execute unless block ~ ~ ~ #daisukes:living_earth/clear run return run function daisukes:modifiers/living_earth/remove
scoreboard players remove @s daisukes.earth_t 1
execute if score @s daisukes.earth_t matches 15 run data merge entity @s {transformation: {translation: [-0.501f, -0.501f, -0.501f], scale: [1.002f, 1.002f, 1.002f]}}
execute if score @s daisukes.earth_t matches 12 run data merge entity @s {transformation: {translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
execute if score @s daisukes.earth_t matches 9 run data merge entity @s {transformation: {translation: [-0.501f, -0.501f, -0.501f], scale: [1.002f, 1.002f, 1.002f]}}
execute if score @s daisukes.earth_t matches 6 run data merge entity @s {transformation: {translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
execute if score @s daisukes.earth_t matches 3 run data merge entity @s {transformation: {translation: [-0.501f, -0.501f, -0.501f], scale: [1.002f, 1.002f, 1.002f]}}
execute if score @s daisukes.earth_t matches ..0 run function daisukes:modifiers/living_earth/set
