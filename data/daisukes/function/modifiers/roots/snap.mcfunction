# Com a la corda que es trenca: es retira cap al seu plomall, que s'enfonsa. Esclat de fusta i so de corda trencada
tag @s add daisukes.roots_dying
scoreboard players set @s daisukes.roots_t 5
data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.04f, -0.04f, 0f], scale: [0.08f, 0.08f, 0f]}}
execute if entity @s[tag=daisukes.roots_red] run particle minecraft:block{block_state: "minecraft:crimson_hyphae"} ^ ^ ^0.4 0.15 0.15 0.15 0 12 normal @a[distance=..32]
execute unless entity @s[tag=daisukes.roots_red] run particle minecraft:block{block_state: "minecraft:mangrove_wood"} ^ ^ ^0.4 0.15 0.15 0.15 0 12 normal @a[distance=..32]
playsound minecraft:item.lead.break player @a ~ ~ ~ 0.8 1
execute if entity @s[tag=daisukes.roots_red] run playsound minecraft:block.stem.break player @a ~ ~ ~ 0.8 0.9
execute unless entity @s[tag=daisukes.roots_red] run playsound minecraft:block.mangrove_roots.break player @a ~ ~ ~ 0.8 0.9
scoreboard players operation #r daisukes.roots = @s daisukes.roots_r
execute as @e[type=minecraft:block_display,tag=daisukes.roots_tuft,tag=daisukes.roots_mine,tag=!daisukes.roots_dying] if score @s daisukes.roots_r = #r daisukes.roots run function daisukes:modifiers/roots/sink
