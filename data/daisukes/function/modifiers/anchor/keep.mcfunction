# Com a cada jugador (no espectador) mentre algu esta encadenat. Encara te l'objecte que li brilla?
$execute if items entity @s container.* *[minecraft:custom_data~{daisukes_anchor:{n:$(n)}}] run return 0
$execute if items entity @s weapon.offhand *[minecraft:custom_data~{daisukes_anchor:{n:$(n)}}] run return 0
$execute if items entity @s armor.* *[minecraft:custom_data~{daisukes_anchor:{n:$(n)}}] run return 0
$execute if items entity @s player.cursor *[minecraft:custom_data~{daisukes_anchor:{n:$(n)}}] run return 0
$execute if items entity @s player.crafting.* *[minecraft:custom_data~{daisukes_anchor:{n:$(n)}}] run return 0
# No: si en tenia un i no l'ha llencat (l'ha posat en un cofre, menjat, col·locat...), un altre
execute if entity @s[tag=daisukes.anchor_m] run return run function daisukes:modifiers/anchor/lost
execute if score #t10 daisukes.anchor matches 0 run function daisukes:modifiers/anchor/mark
