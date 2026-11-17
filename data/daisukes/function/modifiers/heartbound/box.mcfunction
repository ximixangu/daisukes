# Com a la capsa de cops del creaking (a la seva posicio): hi va. Si algu l'ha picada (attack), compta
tp @s ~ ~ ~
scoreboard players add #box daisukes.heart 1
execute if data entity @s attack run function daisukes:modifiers/heartbound/box_hit
