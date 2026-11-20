# Com a mob muntable de la xarxa, als peus: la seva ombra hi va (si no la troba, una de nova). Les llames del
# comerciant desapareixen amb ell sense morir-se: quan els queden 2 ticks (DespawnDelay), l'ombra ho sap
scoreboard players operation #t daisukes.oc = @s daisukes.oc_id
scoreboard players set #dd daisukes.oc 100
execute if entity @s[type=minecraft:trader_llama] store result score #dd daisukes.oc run data get entity @s DespawnDelay
execute as @e[type=minecraft:marker,tag=daisukes.oc_shadow,distance=..16,predicate=daisukes:overcharge/is_t,limit=1] run return run function daisukes:modifiers/overcharge/shadow/seen
function daisukes:modifiers/overcharge/shadow/new
