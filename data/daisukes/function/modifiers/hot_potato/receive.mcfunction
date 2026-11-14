# Com a nou portador: 10 s. Un jugador la pot passar; un mob explota quan s'acaba el temps.
tag @s remove daisukes.potato_next
tag @s add daisukes.potato_holder
scoreboard players set #time daisukes.potato 200
scoreboard players set #held daisukes.potato 0
bossbar set daisukes:potato players @s[type=player]

playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1.4
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.8 1.2
