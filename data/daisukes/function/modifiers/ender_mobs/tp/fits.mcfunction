# Torna 1 si el mob hi cap, amb els peus aqui. Si te objectiu a prop (blink), no en queda massa lluny. Els alts, un
# bloc mes de lloc lliure (tp/free); els amples, tambe els 8 blocs del voltant (peus, cap i, si son alts, el de dalt)
execute if score #guard daisukes.em matches 1 unless entity @e[tag=daisukes.em_tgt,distance=..10] run return fail
execute if score #guard daisukes.em matches 2 unless entity @e[tag=daisukes.em_tgt,distance=..16] run return fail
execute if score #tall daisukes.em matches 1 positioned ~ ~2 ~ unless function daisukes:modifiers/ender_mobs/tp/free run return fail
execute if score #wide daisukes.em matches 0 run return 1
execute unless function daisukes:modifiers/ender_mobs/tp/ring run return fail
execute positioned ~ ~1 ~ unless function daisukes:modifiers/ender_mobs/tp/ring run return fail
execute if score #tall daisukes.em matches 1 positioned ~ ~2 ~ unless function daisukes:modifiers/ender_mobs/tp/ring run return fail
return 1
