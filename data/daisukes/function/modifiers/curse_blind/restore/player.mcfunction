# Com a jugador, on es: el que dugui amb aspecte de structure void sense ser-ho torna a ser normal, tambe el cursor,
# la graella de crafteig i el cofre de l'ender. Un item_display ajudant (cb_tmp) fa la feina i despres desapareix
execute unless items entity @s container.* *[minecraft:item_model="minecraft:structure_void"] unless items entity @s armor.* *[minecraft:item_model="minecraft:structure_void"] unless items entity @s weapon.offhand *[minecraft:item_model="minecraft:structure_void"] unless items entity @s player.cursor *[minecraft:item_model="minecraft:structure_void"] unless items entity @s player.crafting.* *[minecraft:item_model="minecraft:structure_void"] unless items entity @s enderchest.* *[minecraft:item_model="minecraft:structure_void"] run return 0
execute summon minecraft:item_display run tag @s add daisukes.cb_tmp
function daisukes:modifiers/curse_blind/restore/player_slots
kill @n[type=minecraft:item_display,tag=daisukes.cb_tmp]
