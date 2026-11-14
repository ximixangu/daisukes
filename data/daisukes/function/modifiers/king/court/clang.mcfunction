# Com a monstre protegit que acaba de rebre un cop d'un jugador (on_strike): so de metall, espurnes i un fil daurat
# fins al Rei que el protegeix
playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 0.3 2
playsound minecraft:item.shield.block hostile @a ~ ~ ~ 0.8 1.3
particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.4 0.3 0.2 10
particle minecraft:wax_on ~ ~1 ~ 0.3 0.5 0.3 0 6
tag @n[type=minecraft:text_display,tag=daisukes.king_reign,distance=..26] add daisukes.king_now
execute anchored eyes positioned ^ ^ ^ facing entity @n[type=minecraft:text_display,tag=daisukes.king_now] feet run function daisukes:modifiers/king/court/tether
tag @e[type=minecraft:text_display,tag=daisukes.king_now] remove daisukes.king_now
