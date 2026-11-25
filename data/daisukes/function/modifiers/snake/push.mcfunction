# Macro: {x, y, z}. Com a jugador (#me): el tros mes nou de la seva cua, a la casella x y z (cantonada: amb ".0", perque
# amb un enter el joc el centraria a mig bloc). Si ja n'hi tenia un (ha tornat a una casella d'on no havia acabat de
# sortir), aquell passa a ser el mes nou: mai dos trossos seus al mateix lloc
scoreboard players add @s daisukes.sn_seq 1
scoreboard players operation #seq daisukes.sn = @s daisukes.sn_seq
$execute positioned $(x).0 $(y).0 $(z).0 as @e[type=minecraft:block_display,tag=daisukes.sn_seg,distance=..0.01,predicate=daisukes:snake/mine,limit=1] run return run function daisukes:modifiers/snake/seg/renew
$execute positioned $(x).0 $(y).0 $(z).0 summon minecraft:block_display run function daisukes:modifiers/snake/seg/new
