# Com a l'objecte. L'encadenat trenca 1 baula; un company, 2 (una sola vegada per tick cadascun)
execute on origin if entity @s[tag=daisukes.anchor_once] run return 0
scoreboard players set #who daisukes.anchor 0
execute on origin if entity @s[tag=daisukes.anchor_p] run scoreboard players set #who daisukes.anchor 1
execute if score #who daisukes.anchor matches 0 on origin if entity @s[type=minecraft:player] run scoreboard players set #who daisukes.anchor 2
execute if score #who daisukes.anchor matches 0 run return 0
data modify storage daisukes:anchor m.last set from entity @s Item.id
scoreboard players operation #before daisukes.anchor = #links daisukes.anchor
execute if score #who daisukes.anchor matches 1 run scoreboard players remove #links daisukes.anchor 1
execute if score #who daisukes.anchor matches 2 run scoreboard players remove #links daisukes.anchor 2
execute if score #links daisukes.anchor matches ..-1 run scoreboard players set #links daisukes.anchor 0
execute on origin at @s run function daisukes:modifiers/anchor/thanks
data modify storage daisukes:anchor m.last set value "minecraft:air"
function daisukes:modifiers/anchor/snap
