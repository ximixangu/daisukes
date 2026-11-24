# Com a caixa blava, al seu origen, quan s'acaba el compte: busca la seva vermella (mateixa parella, mateixa
# dimensio) i s'intercanvien els blocs (swap/go). Si no la troba o el clone no es pot fer, s'esvaeixen sense res
scoreboard players operation #id daisukes.we = @s daisukes.we_id
data modify storage daisukes:world_edit swap set from storage daisukes:world_edit config.vault
data modify storage daisukes:world_edit swap.ax set from entity @s data.x
data modify storage daisukes:world_edit swap.ay set from entity @s data.y
data modify storage daisukes:world_edit swap.az set from entity @s data.z
data modify storage daisukes:world_edit swap.ax2 set from entity @s data.x2
data modify storage daisukes:world_edit swap.ay2 set from entity @s data.y2
data modify storage daisukes:world_edit swap.az2 set from entity @s data.z2
data modify storage daisukes:world_edit swap.dim set from entity @s data.dim
execute as @e[type=minecraft:marker,tag=daisukes.we_red,distance=0..] if score @s daisukes.we_id = #id daisukes.we run function daisukes:modifiers/world_edit/swap/mate
scoreboard players set #s1 daisukes.we 0
scoreboard players set #s2 daisukes.we 0
scoreboard players set #s3 daisukes.we 0
execute if data storage daisukes:world_edit swap.bx run function daisukes:modifiers/world_edit/swap/go with storage daisukes:world_edit swap
execute if score #s3 daisukes.we matches 1 run return run function daisukes:modifiers/world_edit/swap/done
function daisukes:modifiers/world_edit/swap/fail
