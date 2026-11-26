# Els ecos que esperaven s'esvaeixen sense que ningu hi torni. La vida maxima tallada (si algu acabava de tornar)
# i la proteccio de caiguda les treu leftovers: aquesta, quan toqui a terra
execute as @e[type=minecraft:mannequin,tag=daisukes.ek] at @s run function daisukes:modifiers/ekko/echo/vanish
tag @a[tag=daisukes.ek_held] remove daisukes.ek_held
team remove daisukes.ekko

scoreboard objectives remove daisukes.ek
scoreboard objectives remove daisukes.ek_id
scoreboard objectives remove daisukes.ek_t
scoreboard objectives remove daisukes.ek_cd
scoreboard objectives remove daisukes.ek_hp
scoreboard objectives remove daisukes.ek_gr
scoreboard objectives remove daisukes.ek_dead
scoreboard objectives remove daisukes.ek_left

data remove storage daisukes:ekko echoes
data remove storage daisukes:ekko new
data remove storage daisukes:ekko cur
data remove storage daisukes:ekko key
data remove storage daisukes:ekko cap
data remove storage daisukes:ekko fx
