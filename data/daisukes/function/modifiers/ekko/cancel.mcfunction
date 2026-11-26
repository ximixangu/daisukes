# Com al jugador: el seu eco s'esvaeix sense que hi torni
scoreboard players set @s daisukes.ek_t 0
execute store result storage daisukes:ekko key.id int 1 run scoreboard players get @s daisukes.ek_id
function daisukes:modifiers/ekko/echo/forget with storage daisukes:ekko key
scoreboard players operation #id daisukes.ek = @s daisukes.ek_id
execute as @e[type=minecraft:mannequin,tag=daisukes.ek] if score @s daisukes.ek_id = #id daisukes.ek at @s run function daisukes:modifiers/ekko/echo/vanish
