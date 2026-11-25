# Com a jugador que ha mort o s'ha passat a espectador: la seva cua desapareix i, quan torni a jugar, en fara una de
# nova on sigui (la llargada no canvia)
scoreboard players set @s daisukes.sn_dead 0
scoreboard players operation #me daisukes.sn = @s daisukes.sn_id
execute as @e[type=minecraft:block_display,tag=daisukes.sn_seg,predicate=daisukes:snake/mine] run function daisukes:modifiers/snake/seg/retire
tag @s remove daisukes.sn_on
