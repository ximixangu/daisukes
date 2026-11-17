# Com a una capsa de cops (cada segon): si el seu creaking ja no hi es, fora
scoreboard players operation #o daisukes.heart = @s daisukes.heart
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] if score @s daisukes.heart = #o daisukes.heart run return 0
function daisukes:modifiers/heartbound/remove
