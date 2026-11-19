# Com a mob que surt de la xarxa (lluny dels jugadors): sense marker, ombra, etiquetes ni valors. Els rajos que hi
# anaven es trencaran sols. Si torna a acostar-se, hi entrara de nou
execute on passengers if entity @s[tag=daisukes.oc_rider] run kill @s
scoreboard players operation #t daisukes.oc = @s daisukes.oc_id
execute if entity @s[tag=daisukes.oc_ride] run kill @e[type=minecraft:marker,tag=daisukes.oc_shadow,predicate=daisukes:overcharge/is_t]
tag @s remove daisukes.oc_mob
tag @s remove daisukes.oc_ride
tag @s remove daisukes.oc_odd
scoreboard players reset @s daisukes.oc_id
scoreboard players reset @s daisukes.oc_l1
scoreboard players reset @s daisukes.oc_l2
scoreboard players reset @s daisukes.oc_l3
scoreboard players reset @s daisukes.oc_a1
scoreboard players reset @s daisukes.oc_a2
scoreboard players reset @s daisukes.oc_a3
