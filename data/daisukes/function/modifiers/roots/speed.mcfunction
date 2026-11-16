# Com al lligat: com mes estirada la corda mes tensa, mes lent
scoreboard players operation @s daisukes.roots_v = #b daisukes.roots
attribute @s minecraft:movement_speed modifier remove daisukes:roots
execute if score #b daisukes.roots matches 0 run attribute @s minecraft:movement_speed modifier add daisukes:roots -0.15 add_multiplied_total
execute if score #b daisukes.roots matches 1 run attribute @s minecraft:movement_speed modifier add daisukes:roots -0.35 add_multiplied_total
execute if score #b daisukes.roots matches 2 run attribute @s minecraft:movement_speed modifier add daisukes:roots -0.6 add_multiplied_total
execute if score #b daisukes.roots matches 3 run attribute @s minecraft:movement_speed modifier add daisukes:roots -0.85 add_multiplied_total
execute if score #b daisukes.roots matches 4 run attribute @s minecraft:movement_speed modifier add daisukes:roots -0.95 add_multiplied_total
