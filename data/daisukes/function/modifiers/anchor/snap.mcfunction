# Salten les anelles de les baules que s'acaben de trencar (de dalt a baix)
execute as @e[type=minecraft:block_display,tag=daisukes.anchor_ring] if score @s daisukes.anchor_i > #links daisukes.anchor if score @s daisukes.anchor_i <= #before daisukes.anchor at @s run function daisukes:modifiers/anchor/pop
execute store result bossbar daisukes:anchor value run scoreboard players get #links daisukes.anchor
# I una guspira baixa per la cadena: quan arriba a baix, salta una baula del turmell de l'encadenat (pulse)
scoreboard players operation #burst daisukes.anchor += #before daisukes.anchor
scoreboard players operation #burst daisukes.anchor -= #links daisukes.anchor
scoreboard players set #pulse daisukes.anchor 0
execute if score #links daisukes.anchor matches ..0 run function daisukes:modifiers/anchor/free
