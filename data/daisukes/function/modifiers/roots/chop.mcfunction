# Com a la interaccio dels peus: algu hi ha pegat. Amb destral compta el doble. Talla la corda mes propera a ell
scoreboard players set #pts daisukes.roots 1
execute on attacker if items entity @s weapon.mainhand #minecraft:axes run scoreboard players set #pts daisukes.roots 2
execute on attacker at @s as @e[type=minecraft:block_display,tag=daisukes.roots_rope,tag=daisukes.roots_mine,tag=!daisukes.roots_dying,sort=nearest,limit=1] at @s run function daisukes:modifiers/roots/chop_rope
data remove entity @s attack
