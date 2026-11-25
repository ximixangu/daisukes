# Com a jugador (#me): mentre la seva cua tingui mes trossos que la seva llargada, el mes vell (el de #seq mes baix)
# desapareix
execute store result score #n daisukes.sn if entity @e[type=minecraft:block_display,tag=daisukes.sn_seg,predicate=daisukes:snake/mine]
execute if score #n daisukes.sn <= @s daisukes.sn_len run return 0
scoreboard players set #min daisukes.sn 2147483647
scoreboard players operation #min daisukes.sn < @e[type=minecraft:block_display,tag=daisukes.sn_seg,predicate=daisukes:snake/mine] daisukes.sn_seq
execute as @e[type=minecraft:block_display,tag=daisukes.sn_seg,predicate=daisukes:snake/mine] if score @s daisukes.sn_seq = #min daisukes.sn run function daisukes:modifiers/snake/seg/retire
function daisukes:modifiers/snake/trim
