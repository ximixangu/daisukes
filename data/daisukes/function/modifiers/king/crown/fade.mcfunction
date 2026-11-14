# Com a corona que s'esvaeix (no hi ha ningu a prop, o fa massa estona que no troba hereu): el Rei abdica
scoreboard players operation #cid daisukes.king_id = @s daisukes.king_id
execute if entity @s[tag=daisukes.king_reign] on vehicle run function daisukes:modifiers/king/ruler/uncrown
execute as @e[tag=daisukes.king_heir] if score @s daisukes.king_id = #cid daisukes.king_id run function daisukes:modifiers/king/ruler/unheir
execute as @a[tag=daisukes.king_wearer] if score @s daisukes.king_id = #cid daisukes.king_id run function daisukes:modifiers/king/player/unwear
execute store result storage daisukes:king arg.id int 1 run scoreboard players get @s daisukes.king_id
function daisukes:modifiers/king/bar/remove with storage daisukes:king arg
function daisukes:modifiers/king/crown/poof
