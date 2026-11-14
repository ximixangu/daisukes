# Com a corona que portava algu que ja no hi es (mort, desconnectat, espectador): queda flotant on es
execute as @a[tag=daisukes.king_wearer] if score @s daisukes.king_id = #cid daisukes.king_id run function daisukes:modifiers/king/player/unwear
function daisukes:modifiers/king/crown/orphan
