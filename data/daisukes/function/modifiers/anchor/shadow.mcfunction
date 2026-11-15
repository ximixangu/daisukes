summon minecraft:block_display ~ ~0.05 ~ {Tags: ["daisukes.anchor", "daisukes.anchor_shadow", "daisukes.anchor_new"], block_state: {Name: "minecraft:air"}, shadow_radius: 0.3f, shadow_strength: 0.35f}
scoreboard players operation @e[type=minecraft:block_display,tag=daisukes.anchor_new] daisukes.anchor = #event daisukes.anchor
tag @e[type=minecraft:block_display,tag=daisukes.anchor_new] remove daisukes.anchor_new
playsound minecraft:block.trial_spawner.about_to_spawn_item block @a ~ ~ ~ 1 0.9
