scoreboard objectives add daisukes.potato dummy
scoreboard objectives add daisukes.potato_hit minecraft.custom:minecraft.damage_dealt
scoreboard players set #20 daisukes.potato 20

# Comptador del portador: una barra de 10 segments que nomes veu ell
bossbar add daisukes:potato {"text": "Hot Potato", "color": "gold"}
bossbar set daisukes:potato style notched_10
bossbar set daisukes:potato max 200

# La primera patata surt despres de 5 s
scoreboard players set #phase daisukes.potato 0
scoreboard players set #time daisukes.potato 100
