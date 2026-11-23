# Com a mina encesa, cada tick: quan el compte arriba a 0, esclata (boom). Mentrestant parpelleja amb les altres:
# vermella 2 ticks (amb un bip) i groga 2 ticks
execute if score @s daisukes.tk matches ..0 run return run function daisukes:modifiers/tank/mine/boom
scoreboard players remove @s daisukes.tk 1
scoreboard players add #lit daisukes.tk 1
execute if score #c4 daisukes.tk matches 0 run function daisukes:modifiers/tank/mine/red
execute if score #c4 daisukes.tk matches 2 run data merge entity @s {block_state: {Name: "minecraft:yellow_concrete"}}
