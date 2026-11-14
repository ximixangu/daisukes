# Com a corona que volava cap a algu que ja no hi es (mort, desconnectat...) o que no la pot portar: queda flotant on
# es. Si anava cap a un hereu, l'interregne ja s'havia acabat i el proper segon en busca un altre (crown/seek)
execute as @e[tag=daisukes.king_dest,tag=daisukes.king_heir] run function daisukes:modifiers/king/ruler/unheir
execute as @a[tag=daisukes.king_wearer] if score @s daisukes.king_id = #cid daisukes.king_id run function daisukes:modifiers/king/player/unwear
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest
function daisukes:modifiers/king/crown/orphan
