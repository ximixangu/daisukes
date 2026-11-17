# Els contenidors tambe es trenquen, pero el que tenien (i el contenidor) cau a terra
execute if block ~ ~ ~ #daisukes:heavy_container run return run function daisukes:modifiers/heavy/spill

execute unless block ~ ~ ~ #daisukes:heavy_empty unless block ~ ~ ~ #daisukes:heavy_unbreakable run setblock ~ ~ ~ air destroy
