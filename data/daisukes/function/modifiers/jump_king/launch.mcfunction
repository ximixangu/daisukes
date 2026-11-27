# Com al jugador quiet que salta amb #hf endavant i #hl a l'esquerra (segons cap on mira) i #v amunt. Al mon,
# endavant es (-sin, cos) i l'esquerra (cos, sin), amb l'angle horitzontal
execute store result score #ang daisukes.jk run data get entity @s Rotation[0] 10
function daisukes:modifiers/jump_king/math/trig
scoreboard players operation @s daisukes.jk_vx = #hl daisukes.jk
scoreboard players operation @s daisukes.jk_vx *= #cos daisukes.jk
scoreboard players operation #n daisukes.jk = #hf daisukes.jk
scoreboard players operation #n daisukes.jk *= #sin daisukes.jk
scoreboard players operation @s daisukes.jk_vx -= #n daisukes.jk
scoreboard players operation @s daisukes.jk_vx /= #10000 daisukes.jk
scoreboard players operation @s daisukes.jk_vz = #hf daisukes.jk
scoreboard players operation @s daisukes.jk_vz *= #cos daisukes.jk
scoreboard players operation #n daisukes.jk = #hl daisukes.jk
scoreboard players operation #n daisukes.jk *= #sin daisukes.jk
scoreboard players operation @s daisukes.jk_vz += #n daisukes.jk
scoreboard players operation @s daisukes.jk_vz /= #10000 daisukes.jk
scoreboard players operation @s daisukes.jk_vy = #v daisukes.jk
scoreboard players operation @s daisukes.jk_ox = @s daisukes.jk_vx
scoreboard players operation @s daisukes.jk_oz = @s daisukes.jk_vz
function daisukes:modifiers/jump_king/math/impulse

# El vol: on comenca, el punt mes alt, on era (decimes de bloc en horitzontal, per no passar de l'enter si es molt
# lluny) i la gravetat (per preveure la velocitat i saber si toca un sostre o una paret)
execute store result score @s daisukes.jk_g run attribute @s minecraft:gravity get 10000
execute store result score @s daisukes.jk_y0 run data get entity @s Pos[1] 100
scoreboard players operation @s daisukes.jk_ym = @s daisukes.jk_y0
scoreboard players operation @s daisukes.jk_yl = @s daisukes.jk_y0
execute store result score @s daisukes.jk_xl run data get entity @s Pos[0] 10
execute store result score @s daisukes.jk_zl run data get entity @s Pos[2] 10
scoreboard players set @s daisukes.jk_t 1
scoreboard players set @s daisukes.jk_cx 0
scoreboard players set @s daisukes.jk_cy 0
scoreboard players set @s daisukes.jk_cz 0
# El primer tick encara es a terra (com en tot salt): si prem WASD hi camina una mica (jk_acc: velocitat x 0,216 /
# friccio^3), i en acabar la velocitat horitzontal es queda en el 54,6 % (sobre gel, 89 %; sobre slime, 73 %). Despres,
# en l'aire, en el 91 %
scoreboard players set @s daisukes.jk_fr 546
scoreboard players set #kg daisukes.jk 1000
execute if block ~ ~-0.5 ~ #minecraft:ice run scoreboard players set @s daisukes.jk_fr 892
execute if block ~ ~-0.5 ~ #minecraft:ice run scoreboard players set #kg daisukes.jk 230
execute if block ~ ~-0.5 ~ minecraft:blue_ice run scoreboard players set @s daisukes.jk_fr 900
execute if block ~ ~-0.5 ~ minecraft:blue_ice run scoreboard players set #kg daisukes.jk 223
execute if block ~ ~-0.5 ~ minecraft:slime_block run scoreboard players set @s daisukes.jk_fr 728
execute if block ~ ~-0.5 ~ minecraft:slime_block run scoreboard players set #kg daisukes.jk 422
execute store result score @s daisukes.jk_acc run attribute @s minecraft:movement_speed get 10000
scoreboard players operation @s daisukes.jk_acc *= #kg daisukes.jk
scoreboard players operation @s daisukes.jk_acc /= #1000 daisukes.jk
tag @s remove daisukes.jk_air
tag @s remove daisukes.jk_top
# La caiguda compta des de dalt de tot: es perdona el que pujara el salt, i nomes fa mal el que baixi per sota d'on
# ha saltat (com sense Jump King)
function daisukes:modifiers/jump_king/math/apex
execute store result storage daisukes:jump_king fall.h double 0.0001 run scoreboard players get #y daisukes.jk
function daisukes:modifiers/jump_king/fall_set with storage daisukes:jump_king fall
