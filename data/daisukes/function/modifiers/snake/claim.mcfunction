# Com a jugador que juga (sweep): els seus trossos no son orfes; i si en te mes que la seva llargada, sobren els vells
scoreboard players operation #me daisukes.sn = @s daisukes.sn_id
tag @e[type=minecraft:block_display,tag=daisukes.sn_orphan,predicate=daisukes:snake/mine] remove daisukes.sn_orphan
function daisukes:modifiers/snake/trim
