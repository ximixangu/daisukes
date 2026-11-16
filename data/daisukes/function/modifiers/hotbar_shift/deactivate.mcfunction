# Fi de la il·lusió: tothom torna a tenir l'inventari de veritat
execute as @a[scores={daisukes.shift_dead=1..}] run function daisukes:modifiers/hotbar_shift/died
execute as @a run function daisukes:modifiers/hotbar_shift/recover
# Ja no és actiu: els avenços deixen d'escoltar
scoreboard players reset #on daisukes.shift
advancement grant @a only daisukes:hotbar_shift/changed
advancement grant @a only daisukes:hotbar_shift/rescue

# Restes pel món carregat: objectes a terra, marcs, muntures, fletxes...
execute as @e[type=item] if items entity @s contents *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/drop
execute as @e[type=item] if items entity @s contents *[bundle_contents~{items:{contains:[{predicates:{custom_data:{daisukes_shift:{}}}}]}}] run function daisukes:modifiers/hotbar_shift/drop
execute as @e[type=#daisukes:hotbar_shift/holders] run function daisukes:modifiers/hotbar_shift/fix_entity
execute as @e[type=#daisukes:hotbar_shift/projectiles] if data entity @s item.components."minecraft:custom_data".daisukes_shift run function daisukes:modifiers/hotbar_shift/fix_nbt {src:"entity @s",path:"item"}

kill @e[type=item_display,tag=daisukes.shift_fx]
kill @e[type=item_display,tag=daisukes.shift_buf]
bossbar remove daisukes:shift
scoreboard objectives remove daisukes.shift
scoreboard objectives remove daisukes.shift_uid
scoreboard objectives remove daisukes.shift_rot
scoreboard objectives remove daisukes.shift_dirty
scoreboard objectives remove daisukes.shift_dead
