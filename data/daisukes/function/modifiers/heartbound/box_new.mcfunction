# Com al creaking que no en te: la seva capsa de cops, amb el numero del seu amo
summon minecraft:interaction ~ ~ ~ {width: 1.3f, height: 3.0f, response: 0b, Tags: ["daisukes.heart", "daisukes.heart_hit", "daisukes.heart_new"]}
scoreboard players operation @e[type=minecraft:interaction,tag=daisukes.heart_new,limit=1] daisukes.heart = #o daisukes.heart
tag @e[type=minecraft:interaction,tag=daisukes.heart_new] remove daisukes.heart_new
