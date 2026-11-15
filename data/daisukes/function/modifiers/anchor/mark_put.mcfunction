$item modify entity @s container.$(i) {function: "minecraft:set_components", components: {"minecraft:enchantment_glint_override": true, "minecraft:custom_data": {daisukes_anchor: {n: $(n)}}}}
scoreboard players set #found daisukes.anchor 1
tag @s add daisukes.anchor_m
execute at @s run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.6 1.6
