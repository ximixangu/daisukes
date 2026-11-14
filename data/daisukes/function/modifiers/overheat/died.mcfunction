# Com a jugador que ha mort (pot ser encara a la pantalla de mort): torna a comencar fred.
# La barra s'amaga i torna quan reapareix
scoreboard players reset @s daisukes.heat_d
scoreboard players set @s daisukes.heat 0
scoreboard players set @s daisukes.heat_b 0
scoreboard players set @s daisukes.heat_w 0
execute if score @s daisukes.heat_id matches 1.. run function daisukes:modifiers/overheat/hide
