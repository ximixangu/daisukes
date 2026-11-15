tag @s add daisukes.anchor_gift
execute on origin run function daisukes:modifiers/anchor/fetch
execute if score #phase daisukes.anchor matches 3 run function daisukes:modifiers/anchor/credit
tag @s remove daisukes.anchor_gift
