# Com a corona que acaba de quedar-se sense Rei (mort o desaparegut): comença l'interregne, la seva cort
# queda indefensa i toquen a morts (campana i "wah wah wah waaah")
tag @s remove daisukes.king_reign
tag @s remove daisukes.king_creeper
tag @s remove daisukes.king_silverfish
tag @s remove daisukes.king_creaking
scoreboard players operation @s daisukes.king = #interregnum daisukes.king
function daisukes:modifiers/king/court/shatter

playsound minecraft:block.bell.use master @a[distance=..64] ~ ~ ~ 2 0.7
tag @s remove daisukes.king_fanfare
tag @s add daisukes.king_dirge
scoreboard players set @s daisukes.king_fx 34
