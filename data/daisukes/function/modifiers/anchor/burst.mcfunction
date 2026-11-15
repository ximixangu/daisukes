# La guspira ha arribat als peus: salta una baula del turmell (dues si les ha trencat un company)
scoreboard players set #pulse daisukes.anchor -1
execute as @e[type=minecraft:player,tag=daisukes.anchor_p,gamemode=!creative,gamemode=!spectator] at @s positioned ~ ~0.3 ~ run function daisukes:modifiers/anchor/ankle
scoreboard players set #burst daisukes.anchor 0
