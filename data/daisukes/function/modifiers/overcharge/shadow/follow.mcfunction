# Com a mob muntable de la xarxa, als peus: la seva ombra hi va (si no la troba, una de nova)
scoreboard players operation #t daisukes.oc = @s daisukes.oc_id
execute as @e[type=minecraft:marker,tag=daisukes.oc_shadow,distance=..16,predicate=daisukes:overcharge/is_t,limit=1] run return run function daisukes:modifiers/overcharge/shadow/seen
function daisukes:modifiers/overcharge/shadow/new
