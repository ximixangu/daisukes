# Com a jugador que salta, als seus peus: s'encenen totes les seves mines que encara no ho estiguin, de la mes
# propera a la mes llunyana. La primera esclata al cap de #fuse ticks i cada una #chain ticks despres de l'anterior
scoreboard players set @s daisukes.tk_jump 0
scoreboard players operation #me daisukes.tk = @s daisukes.tk_id
execute unless entity @e[type=minecraft:block_display,tag=daisukes.tk_mine,tag=!daisukes.tk_lit,predicate=daisukes:tank/is_me,limit=1] run return 0
scoreboard players operation #f daisukes.tk = #fuse daisukes.tk
execute as @e[type=minecraft:block_display,tag=daisukes.tk_mine,tag=!daisukes.tk_lit,predicate=daisukes:tank/is_me,sort=nearest] at @s run function daisukes:modifiers/tank/mine/light
playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.4
