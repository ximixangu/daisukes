# T'esclata a la cara: mort ("went off with a bang")
particle minecraft:flash{color: [1.0, 1.0, 1.0, 1.0]} ~ ~ ~
particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 0 3
particle minecraft:instant_effect{color: [0.71, 0.3, 1.0], power: 3.0} ~ ~ ~ 0.3 0.3 0.3 0.5 50
particle minecraft:firework ~ ~ ~ 0 0 0 0.25 40
particle minecraft:block{block_state: "minecraft:amethyst_block"} ~ ~ ~ 0.3 0.3 0.3 0 30
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.3
playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1.2 1
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] run damage @s 1000 minecraft:fireworks
