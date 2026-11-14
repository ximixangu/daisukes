# S'encen: la TNT surt de terra brillant, flaix, anell de foc i xiulet. Esclata en $(fuse) ticks (daisukes.bspot = lloc a la cadena)
tag @s add daisukes.bspot_lit
$scoreboard players set @s daisukes.bspot_fx $(fuse)
scoreboard players set @s daisukes.bspot 0
summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.bspot_pop"], block_state: {Name: "minecraft:tnt"}, brightness: {sky: 15, block: 15}, Glowing: 1b, glow_color_override: 16777215, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.3f, 0f, -0.3f], scale: [0.6f, 0.6f, 0.6f]}}
playsound minecraft:entity.tnt.primed block @a ~ ~ ~ 1.2 1.3
particle minecraft:flash{color:[1.0,0.55,0.2,1.0]} ~ ~0.3 ~ 0 0 0 0 1 force @a[distance=..48]
particle minecraft:flame ~ ~0.1 ~ 0.5 0 0.5 0.03 24 force @a[distance=..48]
