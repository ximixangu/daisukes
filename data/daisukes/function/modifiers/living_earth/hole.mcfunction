# Com a cada forat, al seu centre. No es veu res fins als ultims ticks: llavors pampallugueja la silueta negra (encara
# es pot travessar) i es posa
scoreboard players remove @s daisukes.earth_t 1
execute if score @s daisukes.earth_t matches 15 run data merge entity @s {transformation: {scale: [1.002f, 1.002f, 1.002f]}}
execute if score @s daisukes.earth_t matches 12 run data merge entity @s {transformation: {scale: [0f, 0f, 0f]}}
execute if score @s daisukes.earth_t matches 9 run data merge entity @s {transformation: {scale: [1.002f, 1.002f, 1.002f]}}
execute if score @s daisukes.earth_t matches 7 run data merge entity @s {transformation: {scale: [0f, 0f, 0f]}}
execute if score @s daisukes.earth_t matches 5 run data merge entity @s {transformation: {scale: [1.002f, 1.002f, 1.002f]}}
execute if score @s daisukes.earth_t matches 4 run data merge entity @s {transformation: {scale: [0f, 0f, 0f]}}
execute if score @s daisukes.earth_t matches 3 run data merge entity @s {transformation: {scale: [1.002f, 1.002f, 1.002f]}}
execute if score @s daisukes.earth_t matches ..0 run function daisukes:modifiers/living_earth/back
