# Quantes baules calen fins als peus de l'encadenat (0,8 cadascuna) i, mentre surt, com a molt #reveal
scoreboard players set #n daisukes.anchor 1
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ run function daisukes:modifiers/anchor/chain_len
execute if score #n daisukes.anchor > #reveal daisukes.anchor run scoreboard players operation #n daisukes.anchor = #reveal daisukes.anchor
execute unless score #n daisukes.anchor = #shown daisukes.anchor run function daisukes:modifiers/anchor/chain_count
# Totes les baules a l'ull, girades cap als peus de l'encadenat (la distancia de cadascuna ja es a la transformacio)
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.5625 ^ facing entity @a[tag=daisukes.anchor_p,limit=1] feet as @e[type=minecraft:block_display,tag=daisukes.anchor_chain] run tp @s ~ ~ ~ ~ ~
