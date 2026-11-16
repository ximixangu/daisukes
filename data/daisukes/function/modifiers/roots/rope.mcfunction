# Com al plomall: la seva corda neix del cap del plomall, sense llargada (al tick seguent creix fins als peus)
scoreboard players operation #r daisukes.roots = @s daisukes.roots_r
execute if dimension minecraft:the_nether positioned ~ ~0.2 ~ run summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_rope", "daisukes.roots_new", "daisukes.roots_red"], block_state: {Name: "minecraft:crimson_hyphae", Properties: {axis: "z"}}, teleport_duration: 2, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.1f, -0.1f, 0f], scale: [0.2f, 0.2f, 0f]}}
execute unless dimension minecraft:the_nether positioned ~ ~0.2 ~ run summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_rope", "daisukes.roots_new"], block_state: {Name: "minecraft:mangrove_wood", Properties: {axis: "z"}}, teleport_duration: 2, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.1f, -0.1f, 0f], scale: [0.2f, 0.2f, 0f]}}
scoreboard players operation @e[tag=daisukes.roots_new] daisukes.roots_r = #r daisukes.roots
scoreboard players operation @e[tag=daisukes.roots_new] daisukes.roots = #me daisukes.roots
scoreboard players set @e[tag=daisukes.roots_new] daisukes.roots_l -1
scoreboard players set @e[tag=daisukes.roots_new] daisukes.roots_c 0
tag @e[tag=daisukes.roots_new] remove daisukes.roots_new
