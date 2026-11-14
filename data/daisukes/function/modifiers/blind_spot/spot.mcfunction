# Revelada: 10 s marcada. Si estava amagada, esclat de llum que s'aixeca de terra i "ding"
execute unless score @s daisukes.bspot_fx matches 1.. run function daisukes:modifiers/blind_spot/reveal
scoreboard players set @s daisukes.bspot_fx 200
