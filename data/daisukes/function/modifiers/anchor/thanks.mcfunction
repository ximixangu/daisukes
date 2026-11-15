# Com a qui l'ha llencat: deixa de brillar (tambe la resta de la pila) i, si encara queden baules, li'n brilla un altre
function daisukes:modifiers/anchor/unmark_all
tag @s remove daisukes.anchor_m
tag @s add daisukes.anchor_once
playsound minecraft:block.chain.break player @s ~ ~ ~ 0.6 1.6
particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.4 0.3 0.1 8 force @a[distance=..48]
execute if score #links daisukes.anchor matches 1.. run function daisukes:modifiers/anchor/mark
