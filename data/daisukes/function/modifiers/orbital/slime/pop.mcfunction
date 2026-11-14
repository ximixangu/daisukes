# Els petits fan "plop"; el gros esquitxa (i es parteix a slime/split)
execute if entity @s[tag=daisukes.orb_slimelet] run particle minecraft:item_slime ~ ~ ~ 0.1 0.1 0.1 0 10
execute if entity @s[tag=daisukes.orb_slimelet] run return run playsound minecraft:entity.slime.squish_small master @a ~ ~ ~ 1 1.5
particle minecraft:instant_effect{color: [0.49, 1.0, 0.31]} ~ ~ ~ 0.2 0.2 0.2 0.3 16
particle minecraft:item_slime ~ ~ ~ 0.3 0.3 0.3 0 30
particle minecraft:block{block_state: "minecraft:slime_block"} ~ ~ ~ 0.25 0.25 0.25 0 15
playsound minecraft:entity.slime.squish master @a ~ ~ ~ 1 1.1
playsound minecraft:block.slime_block.break master @a ~ ~ ~ 0.8 1.2
