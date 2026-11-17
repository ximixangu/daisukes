# Com al jugador que canvia de nivell, als seus peus: atributs nous (id daisukes:clockwork)
scoreboard players operation #old daisukes.cw = @s daisukes.cw_t
scoreboard players operation @s daisukes.cw_t = #ti daisukes.cw
function daisukes:modifiers/clockwork/clear
execute if score #ti daisukes.cw matches 1 run attribute @s minecraft:movement_speed modifier add daisukes:clockwork -0.15 add_multiplied_total
execute if score #ti daisukes.cw matches 2 run attribute @s minecraft:movement_speed modifier add daisukes:clockwork -0.35 add_multiplied_total
execute if score #ti daisukes.cw matches 2 run attribute @s minecraft:block_break_speed modifier add daisukes:clockwork -0.3 add_multiplied_total
execute if score #ti daisukes.cw matches 3 run attribute @s minecraft:movement_speed modifier add daisukes:clockwork -0.6 add_multiplied_total
execute if score #ti daisukes.cw matches 3 run attribute @s minecraft:block_break_speed modifier add daisukes:clockwork -0.6 add_multiplied_total
execute if score #ti daisukes.cw matches 3 run attribute @s minecraft:jump_strength modifier add daisukes:clockwork -0.4 add_multiplied_total
execute if score #ti daisukes.cw matches 4 run attribute @s minecraft:movement_speed modifier add daisukes:clockwork -1.0 add_multiplied_total
execute if score #ti daisukes.cw matches 4 run attribute @s minecraft:block_break_speed modifier add daisukes:clockwork -1.0 add_multiplied_total
execute if score #ti daisukes.cw matches 4 run attribute @s minecraft:jump_strength modifier add daisukes:clockwork -1.0 add_multiplied_total
execute if score #ti daisukes.cw matches 1.. run tag @s add daisukes.cw_has
# S'ha quedat sense corda: la molla es para
execute if score #ti daisukes.cw matches 4 unless score #old daisukes.cw matches 4 run function daisukes:modifiers/clockwork/rundown
execute unless score #ti daisukes.cw matches 4 if score #old daisukes.cw matches 4 run function daisukes:modifiers/clockwork/unfreeze
