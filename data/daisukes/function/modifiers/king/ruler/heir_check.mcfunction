# Com a hereu, cada segon. Si ja no hi ha cap corona que li voli cap al cap (s'ha esvait, ha anat a un altre...),
# deixa de ser-ho
execute unless score @s daisukes.king_id matches 1.. run return run function daisukes:modifiers/king/ruler/unheir
scoreboard players operation #cid daisukes.king_id = @s daisukes.king_id
execute as @e[type=minecraft:text_display,tag=daisukes.king_fly,tag=!daisukes.king_to_wearer] if score @s daisukes.king_id = #cid daisukes.king_id run return 0
function daisukes:modifiers/king/ruler/unheir
