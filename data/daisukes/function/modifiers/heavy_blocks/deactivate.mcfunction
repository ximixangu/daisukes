kill @e[type=minecraft:marker,tag=daisukes.heavy_look]
kill @e[type=minecraft:marker,tag=daisukes.heavy_cand]
scoreboard objectives remove daisukes.heavy
advancement revoke @a only daisukes:modifiers/heavy_blocks/place
advancement revoke @a only daisukes:modifiers/heavy_blocks/where
tag @a remove daisukes.heavy_once
tag @a remove daisukes.heavy_many
tag @a remove daisukes.heavy_who
data remove storage daisukes:heavy main
data remove storage daisukes:heavy off
data remove storage daisukes:heavy state
data remove storage daisukes:heavy w
