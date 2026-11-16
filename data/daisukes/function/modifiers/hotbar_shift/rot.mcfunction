# Cap on mira, en un sol número (gir horitzontal i vertical)
execute store result score #rot daisukes.shift run data get entity @s Rotation[0] 10
execute store result score #pit daisukes.shift run data get entity @s Rotation[1] 10
scoreboard players operation #rot daisukes.shift *= #1801 daisukes.shift
scoreboard players operation #rot daisukes.shift += #pit daisukes.shift
