# Com al jugador en ple salt
scoreboard players add @s daisukes.jk_t 1
# S'acaba: aigua, escala, planejar, volar, muntar, levitar o caure lent (aqui la caiguda ja no compta des de dalt)
execute unless predicate daisukes:jump_king/free_fall run return run function daisukes:modifiers/jump_king/end
# Massa estona, o teletransportat (Ender Pearl, Ekko...): el salt ja no compta, pero el perdo de la caiguda dura fins
# que toqui a terra
execute if score @s daisukes.jk_t matches 600.. run return run function daisukes:modifiers/jump_king/lost
execute store result score #y daisukes.jk run data get entity @s Pos[1] 100
scoreboard players operation #n daisukes.jk = #y daisukes.jk
scoreboard players operation #n daisukes.jk -= @s daisukes.jk_yl
scoreboard players operation @s daisukes.jk_yl = #y daisukes.jk
execute unless score #n daisukes.jk matches -1000..1000 run return run function daisukes:modifiers/jump_king/lost
execute store result score #n daisukes.jk run data get entity @s Pos[0] 10
scoreboard players operation #m daisukes.jk = #n daisukes.jk
scoreboard players operation #n daisukes.jk -= @s daisukes.jk_xl
scoreboard players operation @s daisukes.jk_xl = #m daisukes.jk
execute unless score #n daisukes.jk matches -50..50 run return run function daisukes:modifiers/jump_king/lost
execute store result score #n daisukes.jk run data get entity @s Pos[2] 10
scoreboard players operation #m daisukes.jk = #n daisukes.jk
scoreboard players operation #n daisukes.jk -= @s daisukes.jk_zl
scoreboard players operation @s daisukes.jk_zl = #m daisukes.jk
execute unless score #n daisukes.jk matches -50..50 run return run function daisukes:modifiers/jump_king/lost
execute if predicate daisukes:jump_king/on_ground run return run function daisukes:modifiers/jump_king/ground

# Primer tick que se'l veu enlaire (#first): el que ha trigat (jk_lag) es el que tarda una empenta a arribar al client
# i tornar-ne la noticia. Si ja d'entrada no avanca cap on havia d'anar, es que saltava contra una paret
scoreboard players set #first daisukes.jk 0
execute unless entity @s[tag=daisukes.jk_air] run function daisukes:modifiers/jump_king/airborne
execute if score #y daisukes.jk > @s daisukes.jk_ym run scoreboard players operation @s daisukes.jk_ym = #y daisukes.jk
# Ja baixa: es perdona el que ha pujat de debo (potser un sostre l'ha aturat abans)
scoreboard players operation #n daisukes.jk = @s daisukes.jk_ym
scoreboard players operation #n daisukes.jk -= #y daisukes.jk
execute unless entity @s[tag=daisukes.jk_top] if score #n daisukes.jk matches 6.. run function daisukes:modifiers/jump_king/top
# La velocitat prevista passa a la d'ara; #px, #py, #pz es la d'abans. Si ha picat contra una paret, potser ho ha fet
# en el moviment d'abans (s'hi ha acostat i aturat a mitges): la velocitat amb que ha picat es #ox, #oz, la de llavors
scoreboard players operation #ox daisukes.jk = @s daisukes.jk_ox
scoreboard players operation #oz daisukes.jk = @s daisukes.jk_oz
scoreboard players operation #px daisukes.jk = @s daisukes.jk_vx
scoreboard players operation #py daisukes.jk = @s daisukes.jk_vy
scoreboard players operation #pz daisukes.jk = @s daisukes.jk_vz
scoreboard players operation @s daisukes.jk_ox = #px daisukes.jk
scoreboard players operation @s daisukes.jk_oz = #pz daisukes.jk
function daisukes:modifiers/jump_king/math/step
# Sostre: pujava de pressa i s'ha aturat de cop, quan encara havia de pujar
execute if predicate daisukes:jump_king/not_rising if score @s daisukes.jk_cy matches 1.. if score #py daisukes.jk matches 500.. run function daisukes:modifiers/jump_king/ceiling
execute if score @s daisukes.jk_cy matches 1.. run scoreboard players remove @s daisukes.jk_cy 1
execute if predicate daisukes:jump_king/rising run scoreboard players set @s daisukes.jk_cy 2
# Parets
execute if score #bounce daisukes.jk matches 1.. run function daisukes:modifiers/jump_king/walls
