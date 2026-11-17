kill @e[type=minecraft:marker,tag=daisukes.weight]
scoreboard objectives remove daisukes.weight
scoreboard objectives remove daisukes.weight_fall
scoreboard objectives remove daisukes.weight_hits
scoreboard objectives remove daisukes.weight_last
scoreboard objectives remove daisukes.weight_dead
data remove storage daisukes:weight sound
# Restes de la versio anterior, que feia servir daisukes.heavy (el de Heavy Blocks)
scoreboard objectives remove daisukes.heavy_fall
scoreboard objectives remove daisukes.heavy_hits
scoreboard objectives remove daisukes.heavy_dead
execute unless data storage daisukes:state {active: ["heavy_blocks"]} run scoreboard objectives remove daisukes.heavy
