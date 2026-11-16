# Treu la disfressa que s'hagi copiat al bloc (cofres, forns, llits...) i els objectes marcats que s'hi hagin ficat (gerres, prestatges...)
data remove storage daisukes:shift x
data modify storage daisukes:shift x.components set from block ~ ~ ~ components
execute if data storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift.d run function daisukes:modifiers/hotbar_shift/fix_block_data
function daisukes:modifiers/hotbar_shift/fix_nbt {src:"block ~ ~ ~",path:"item"}
execute if data block ~ ~ ~ Items[{components:{"minecraft:custom_data":{daisukes_shift:{}}}}] run function daisukes:modifiers/hotbar_shift/fix_items {src:"block ~ ~ ~"}
