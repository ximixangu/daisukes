# Com a un jugador que estava encadenat (tambe si ha mort o torna d'estar desconnectat): tot com abans, i baixa suau
attribute @s minecraft:gravity modifier remove daisukes:anchor
attribute @s minecraft:block_interaction_range modifier remove daisukes:anchor
attribute @s minecraft:entity_interaction_range modifier remove daisukes:anchor
effect give @s minecraft:slow_falling 5 0 true
tag @s remove daisukes.anchor_p
tag @s remove daisukes.anchor_m
scoreboard players reset @s daisukes.anchor
