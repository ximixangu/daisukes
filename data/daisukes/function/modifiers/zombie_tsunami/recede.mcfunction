# Com a zombi reforcat: perd els reforcos i es marceix (wither IV, 10 s)
tag @s remove daisukes.tsunami
attribute @s minecraft:follow_range modifier remove daisukes:tsunami
attribute @s minecraft:spawn_reinforcements modifier remove daisukes:tsunami
effect clear @s minecraft:speed
effect give @s minecraft:wither 10 3
