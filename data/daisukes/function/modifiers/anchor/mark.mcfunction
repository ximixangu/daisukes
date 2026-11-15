# Com a un jugador: fa brillar un dels seus objectes. Primer la barra rapida (es pot llencar sense obrir l'inventari),
# des d'una casella a l'atzar; despres la resta de l'inventari. Si pot ser, no del tipus que acaba de llencar
scoreboard players set #found daisukes.anchor 0
execute unless items entity @s container.* *[!minecraft:custom_data,!minecraft:enchantment_glint_override,!minecraft:lodestone_tracker,minecraft:enchantments={}] run return 0
function daisukes:modifiers/anchor/mark_pass
execute if score #found daisukes.anchor matches 0 run data modify storage daisukes:anchor m.last set value "minecraft:air"
execute if score #found daisukes.anchor matches 0 run function daisukes:modifiers/anchor/mark_pass
