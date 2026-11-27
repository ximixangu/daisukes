# Com al jugador: la seva velocitat passa a ser jk_vx, jk_vy, jk_vz (deumilesimes de bloc/tick), ara mateix. L'empenta
# se suma a la velocitat que el servidor creu que porta (Motion) i el client rep la suma: per aixo es resta
execute store result score #X daisukes.jk run data get entity @s Motion[0] 10000
execute store result score #Y daisukes.jk run data get entity @s Motion[1] 10000
execute store result score #Z daisukes.jk run data get entity @s Motion[2] 10000
scoreboard players operation #X daisukes.jk *= #-1 daisukes.jk
scoreboard players operation #X daisukes.jk += @s daisukes.jk_vx
scoreboard players operation #Y daisukes.jk *= #-1 daisukes.jk
scoreboard players operation #Y daisukes.jk += @s daisukes.jk_vy
scoreboard players operation #Z daisukes.jk *= #-1 daisukes.jk
scoreboard players operation #Z daisukes.jk += @s daisukes.jk_vz
execute if score #X daisukes.jk matches 100001.. run scoreboard players set #X daisukes.jk 100000
execute if score #X daisukes.jk matches ..-100001 run scoreboard players set #X daisukes.jk -100000
execute if score #Y daisukes.jk matches 100001.. run scoreboard players set #Y daisukes.jk 100000
execute if score #Y daisukes.jk matches ..-100001 run scoreboard players set #Y daisukes.jk -100000
execute if score #Z daisukes.jk matches 100001.. run scoreboard players set #Z daisukes.jk 100000
execute if score #Z daisukes.jk matches ..-100001 run scoreboard players set #Z daisukes.jk -100000
# Els encanteris empenyen en eixos locals (els de ^ ^ ^), que s'inclinen amb el cap. Mirant just amunt o avall el joc
# els confon (MC-303789): s'aixeca o s'abaixa el cap un grau
execute store result score #ang daisukes.jk run data get entity @s Rotation[1] 10
execute if score #ang daisukes.jk matches 899.. run rotate @s ~ 89
execute if score #ang daisukes.jk matches ..-899 run rotate @s ~ -89
execute if score #ang daisukes.jk matches 899.. run scoreboard players set #ang daisukes.jk 890
execute if score #ang daisukes.jk matches ..-899 run scoreboard players set #ang daisukes.jk -890
function daisukes:modifiers/jump_king/math/trig
scoreboard players operation #sp daisukes.jk = #sin daisukes.jk
scoreboard players operation #cp daisukes.jk = #cos daisukes.jk
execute store result score #ang daisukes.jk run data get entity @s Rotation[0] 10
function daisukes:modifiers/jump_king/math/trig
# Cap on mira, en horitzontal: H = -X sin + Z cos. Esquerra L = X cos + Z sin; endavant F = H cp - Y sp; amunt
# U = H sp + Y cp (sin i cos de l'angle horitzontal; sp i cp, del de cap)
scoreboard players operation #H daisukes.jk = #Z daisukes.jk
scoreboard players operation #H daisukes.jk *= #cos daisukes.jk
scoreboard players operation #n daisukes.jk = #X daisukes.jk
scoreboard players operation #n daisukes.jk *= #sin daisukes.jk
scoreboard players operation #H daisukes.jk -= #n daisukes.jk
scoreboard players operation #H daisukes.jk /= #10000 daisukes.jk
scoreboard players operation #L daisukes.jk = #X daisukes.jk
scoreboard players operation #L daisukes.jk *= #cos daisukes.jk
scoreboard players operation #n daisukes.jk = #Z daisukes.jk
scoreboard players operation #n daisukes.jk *= #sin daisukes.jk
scoreboard players operation #L daisukes.jk += #n daisukes.jk
scoreboard players operation #L daisukes.jk /= #10000 daisukes.jk
scoreboard players operation #F daisukes.jk = #H daisukes.jk
scoreboard players operation #F daisukes.jk *= #cp daisukes.jk
scoreboard players operation #n daisukes.jk = #Y daisukes.jk
scoreboard players operation #n daisukes.jk *= #sp daisukes.jk
scoreboard players operation #F daisukes.jk -= #n daisukes.jk
scoreboard players operation #F daisukes.jk /= #10000 daisukes.jk
scoreboard players operation #U daisukes.jk = #H daisukes.jk
scoreboard players operation #U daisukes.jk *= #sp daisukes.jk
scoreboard players operation #n daisukes.jk = #Y daisukes.jk
scoreboard players operation #n daisukes.jk *= #cp daisukes.jk
scoreboard players operation #U daisukes.jk += #n daisukes.jk
scoreboard players operation #U daisukes.jk /= #10000 daisukes.jk
function daisukes:modifiers/jump_king/math/push
