$execute unless data storage daisukes:shift p."$(u)" run return 0
$data modify storage daisukes:shift e set from storage daisukes:shift p."$(u)"
# Amb keepInventory no ha caigut res: ja ho desfarà el tick normal
execute store result score #kept daisukes.shift run function daisukes:modifiers/hotbar_shift/died_kept with storage daisukes:shift e
execute if score #kept daisukes.shift matches 1 run return 0
$data remove storage daisukes:shift p."$(u)"
execute unless data storage daisukes:shift e.item run return 0
data modify storage daisukes:shift x set from storage daisukes:shift e.item
data modify storage daisukes:shift d set from entity @s LastDeathLocation
data modify storage daisukes:shift d.x set from storage daisukes:shift d.pos[0]
data modify storage daisukes:shift d.y set from storage daisukes:shift d.pos[1]
data modify storage daisukes:shift d.z set from storage daisukes:shift d.pos[2]
function daisukes:modifiers/hotbar_shift/died_at with storage daisukes:shift d
