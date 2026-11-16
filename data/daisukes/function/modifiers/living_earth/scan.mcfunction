# Com al cursor de qui ha posat un bloc, al centre del bloc que mirava el tick d'abans: el bloc nou es una casella del
# costat que llavors era buida i ara no
execute if entity @s[tag=daisukes.earth_fe] positioned ~1 ~ ~ unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable run return run function daisukes:modifiers/living_earth/mark
execute if entity @s[tag=daisukes.earth_fw] positioned ~-1 ~ ~ unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable run return run function daisukes:modifiers/living_earth/mark
execute if entity @s[tag=daisukes.earth_fu] positioned ~ ~1 ~ unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable run return run function daisukes:modifiers/living_earth/mark
execute if entity @s[tag=daisukes.earth_fd] positioned ~ ~-1 ~ unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable run return run function daisukes:modifiers/living_earth/mark
execute if entity @s[tag=daisukes.earth_fs] positioned ~ ~ ~1 unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable run return run function daisukes:modifiers/living_earth/mark
execute if entity @s[tag=daisukes.earth_fn] positioned ~ ~ ~-1 unless block ~ ~ ~ #daisukes:living_earth/free unless block ~ ~ ~ #daisukes:living_earth/usable run return run function daisukes:modifiers/living_earth/mark
