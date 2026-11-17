# Com a la clau: l'objecte segons l'aspecte (#lk)
execute if score #lk daisukes.cw matches 0 run data modify entity @s item set value {id: "minecraft:trial_key", count: 1, components: {"minecraft:enchantment_glint_override": true}}
execute if score #lk daisukes.cw matches 1 run data modify entity @s item set value {id: "minecraft:trial_key", count: 1}
execute if score #lk daisukes.cw matches 2 run data modify entity @s item set value {id: "minecraft:ominous_trial_key", count: 1}
