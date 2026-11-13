# Com a jugador: 1 si porta alguna Hot Potato (inventari, ma esquerra o agafada amb el ratoli)
execute if items entity @s container.* minecraft:magma_cream[minecraft:custom_data~{hot_potato: 1b}] run return 1
execute if items entity @s weapon.offhand minecraft:magma_cream[minecraft:custom_data~{hot_potato: 1b}] run return 1
execute if items entity @s player.cursor minecraft:magma_cream[minecraft:custom_data~{hot_potato: 1b}] run return 1
return 0
