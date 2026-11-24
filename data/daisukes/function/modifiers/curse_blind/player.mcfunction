# Com a jugador: tota ranura amb un objecte que encara es veu (ni structure void ni invisible, com els vidres de Junk
# Magnet) passa a semblar un structure void. Primer es mira cada grup sencer i nomes si cal, ranura a ranura
execute if items entity @s container.* *[minecraft:item_model,!minecraft:item_model="minecraft:structure_void",!minecraft:item_model="minecraft:air"] run function daisukes:modifiers/curse_blind/curse/container
execute if items entity @s armor.* *[minecraft:item_model,!minecraft:item_model="minecraft:structure_void",!minecraft:item_model="minecraft:air"] run function daisukes:modifiers/curse_blind/curse/armor
execute if items entity @s weapon.offhand *[minecraft:item_model,!minecraft:item_model="minecraft:structure_void",!minecraft:item_model="minecraft:air"] run item modify entity @s weapon.offhand daisukes:curse_blind/curse
execute if items entity @s player.cursor *[minecraft:item_model,!minecraft:item_model="minecraft:structure_void",!minecraft:item_model="minecraft:air"] run item modify entity @s player.cursor daisukes:curse_blind/curse
execute if items entity @s player.crafting.* *[minecraft:item_model,!minecraft:item_model="minecraft:structure_void",!minecraft:item_model="minecraft:air"] run function daisukes:modifiers/curse_blind/curse/crafting
