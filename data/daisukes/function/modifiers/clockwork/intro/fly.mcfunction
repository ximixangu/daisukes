# Com al jugador: campanada, i els seus rellotges volen a l'esquena i s'encongeixen
playsound minecraft:block.bell.use player @a ~ ~ ~ 1 0.7
execute anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ^ ^-0.35 ^-0.68 as @e[type=minecraft:item_display,tag=daisukes.cw_intro] if score @s daisukes.cw = #me daisukes.cw run function daisukes:modifiers/clockwork/intro/shrink
