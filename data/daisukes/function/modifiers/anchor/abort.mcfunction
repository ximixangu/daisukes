# L'encadenat ha marxat abans d'hora (mentre l'ancora queia o la cadena sortia): fora tot i una altra en 5 s
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~ ~1 ~ 0.4 0.8 0.4 0.02 20 force @a[distance=..48]
execute as @a[tag=daisukes.anchor_p] run function daisukes:modifiers/anchor/restore
function daisukes:modifiers/anchor/done
scoreboard players set #wait daisukes.anchor 100
