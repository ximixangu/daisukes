# Com a corona, on es (cada tick). L'estat va en etiquetes: king_reign, king_fly (+ king_to_wearer), king_worn
# o king_vacant (veure activate)

# D'una activacio anterior, en un chunk que no estava carregat: ja no te cort
execute unless score @s daisukes.king_id matches 1.. run return run function daisukes:modifiers/king/crown/purge

execute if score @s daisukes.king_fx matches 1.. run function daisukes:modifiers/king/crown/jingle

# Sense Rei: compte enrere de l'interregne (per sota de 0, temps que fa que espera un hereu)
execute if entity @s[tag=!daisukes.king_reign] run scoreboard players remove @s daisukes.king 1

execute if entity @s[tag=daisukes.king_reign] run return run function daisukes:modifiers/king/crown/reign
execute if entity @s[tag=daisukes.king_fly] run return run function daisukes:modifiers/king/crown/fly
execute if entity @s[tag=daisukes.king_worn] run function daisukes:modifiers/king/crown/worn
