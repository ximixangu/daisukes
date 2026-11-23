# Com a mina nova (block_display), al centre del bloc: un cub groc de 0,4 assentat a terra, que es veu igual a les
# fosques. Porta l'id del jugador que l'ha plantada (#me)
tag @s add daisukes.tk_mine
data merge entity @s {block_state: {Name: "minecraft:yellow_concrete"}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.2f, 0f, -0.2f], scale: [0.4f, 0.4f, 0.4f]}, brightness: {sky: 15, block: 15}, shadow_radius: 0.3f, shadow_strength: 0.8f}
scoreboard players operation @s daisukes.tk_id = #me daisukes.tk
