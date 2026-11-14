# Com a monstre de la cort: Resistencia V durant 1 s, renovada cada mig segon. No li fa mal res (ni foc, ni lava,
# ni caigudes, ni explosions...), pero els cops encara l'empenyen. Nomes el buit i /kill el poden matar
effect give @s minecraft:resistance 1 4 true
scoreboard players set @s daisukes.king_sub 1
particle minecraft:dust{color: [1.0, 0.82, 0.25], scale: 0.8} ~ ~0.8 ~ 0.3 0.4 0.3 0 1
# Cada 2 s, un fil daurat fins al Rei: aixi es veu qui els protegeix
execute if score #pulse daisukes.king matches 0 anchored eyes positioned ^ ^ ^ facing entity @n[type=minecraft:text_display,tag=daisukes.king_now] feet run function daisukes:modifiers/king/court/tether
