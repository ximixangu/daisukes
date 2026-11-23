# Com a mina que esclata, on es: una TNT invisible amb la metxa a 0 (esclata aquest mateix tick), de potencia #power
# i a nom del jugador que l'ha plantada, si es connectat (les morts compten com seves)
scoreboard players operation #me daisukes.tk = @s daisukes.tk_id
execute summon minecraft:tnt run function daisukes:modifiers/tank/mine/tnt
kill @s
