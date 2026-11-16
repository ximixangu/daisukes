scoreboard objectives add daisukes.earth_q dummy
scoreboard players add #watch daisukes.earth_q 1
execute if score #watch daisukes.earth_q matches 5.. run function daisukes:modifiers/living_earth/fade_all
