# Com al jugador, on acaba d'arribar (el seu eco): el temps torna enrere, i la vida a la d'aleshores
particle minecraft:dust{color:[0.33,0.33,1.0],scale:1.0} ~ ~0.9 ~ 0.3 0.5 0.3 0 16
playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1.3

execute if score #health daisukes.ek matches 1 unless entity @s[gamemode=creative] run function daisukes:modifiers/ekko/health/restore
function daisukes:modifiers/ekko/grace/start
scoreboard players operation @s daisukes.ek_cd = #cooldown_t daisukes.ek

scoreboard players operation #id daisukes.ek = @s daisukes.ek_id
execute as @e[type=minecraft:mannequin,tag=daisukes.ek] if score @s daisukes.ek_id = #id daisukes.ek at @s run function daisukes:modifiers/ekko/echo/vanish
