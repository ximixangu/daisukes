# Cada jugador: so d'il·lusió, espurnes i la seva hotbar flotant davant dels ulls
execute store result score @s daisukes.shift_uid run data get entity @s UUID[0]
advancement revoke @s only daisukes:hotbar_shift/changed
advancement revoke @s only daisukes:hotbar_shift/rescue
playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 0.8 1.2
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.7 1.4
particle minecraft:enchant ~ ~1.2 ~ 0.6 0.6 0.6 1 60
execute if score #fx daisukes.shift matches 1 anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/hotbar_shift/intro/spawn
