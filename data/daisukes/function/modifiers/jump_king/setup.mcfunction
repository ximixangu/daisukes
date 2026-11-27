# Com al jugador que encara no se sap si pot fer servir Jump King: prova de posar-li el pal amb els encanteris (els
# encanteris nous hi son nomes si el mon s'ha reobert despres de posar el datapack; amb /reload, no). Es fa en
# espectador, perque posar i treure el pal no faci soroll ni vibracio, i no mentre vola (en creatiu ho deixaria de fer)
execute if predicate daisukes:jump_king/flying run return 0
tag @s add daisukes.jk_off
attribute @s minecraft:jump_strength modifier remove daisukes:jump_king
# La ranura ja la fa servir una altra cosa: salta com sempre (es torna a provar quan torni a entrar)
execute if items entity @s saddle * run return 0
function daisukes:modifiers/jump_king/math/gm_get
gamemode spectator
item replace entity @s saddle with minecraft:stick[minecraft:custom_data={daisukes_jk:{}},minecraft:equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty",allowed_entities:"minecraft:player"}]
item modify entity @s saddle daisukes:jump_king/probe
execute if items entity @s saddle *[minecraft:custom_data~{daisukes_jk:{ok:1b}}] run tag @s remove daisukes.jk_off
item replace entity @s saddle with minecraft:air
function daisukes:modifiers/jump_king/math/gm_back
execute unless entity @s[tag=daisukes.jk_off] run tag @s add daisukes.jk_ok
