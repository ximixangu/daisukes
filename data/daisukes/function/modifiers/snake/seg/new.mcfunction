# Com a tros nou (block_display), a la cantonada de la seva casella: de qui es (#me), en quin ordre (#seq) i l'aspecte.
# Fins que el seu amo no en surti del tot no fa mal (sn_fresh, seg/arm)
tag @s add daisukes.sn
tag @s add daisukes.sn_seg
tag @s add daisukes.sn_fresh
tag @s add daisukes.sn_new
scoreboard players operation @s daisukes.sn_id = #me daisukes.sn
scoreboard players operation @s daisukes.sn_seq = #seq daisukes.sn
function daisukes:modifiers/snake/seg/look with storage daisukes:snake config
