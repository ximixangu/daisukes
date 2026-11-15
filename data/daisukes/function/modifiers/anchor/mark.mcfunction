# Com a un jugador: fa brillar un dels seus objectes, des d'una casella a l'atzar. Sempre de la barra rapida si n'hi ha
# cap que pugui brillar (es llenca sense obrir l'inventari): si pot ser, d'un altre tipus que el que acaba de llencar, i si
# no, el mateix. Nomes si a la barra no n'hi ha cap, de la resta de l'inventari (tambe d'un altre tipus si pot ser)
scoreboard players set #found daisukes.anchor 0
execute unless items entity @s container.* *[!minecraft:custom_data,!minecraft:enchantment_glint_override,!minecraft:lodestone_tracker,minecraft:enchantments={}] run return 0
function daisukes:modifiers/anchor/mark_bar
execute if score #found daisukes.anchor matches 0 if items entity @s hotbar.* *[!minecraft:custom_data,!minecraft:enchantment_glint_override,!minecraft:lodestone_tracker,minecraft:enchantments={}] run data modify storage daisukes:anchor m.last set value "minecraft:air"
execute if score #found daisukes.anchor matches 0 if items entity @s hotbar.* *[!minecraft:custom_data,!minecraft:enchantment_glint_override,!minecraft:lodestone_tracker,minecraft:enchantments={}] run function daisukes:modifiers/anchor/mark_bar
execute if score #found daisukes.anchor matches 0 run function daisukes:modifiers/anchor/mark_inv
execute if score #found daisukes.anchor matches 0 run data modify storage daisukes:anchor m.last set value "minecraft:air"
execute if score #found daisukes.anchor matches 0 run function daisukes:modifiers/anchor/mark_inv
