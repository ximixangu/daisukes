# Com a jugador viu (no espectador), als seus peus, cada tick. #me: el seu id, per al predicat snake/mine
scoreboard players operation #me daisukes.sn = @s daisukes.sn_id
execute unless score @s daisukes.sn_len matches 1.. run scoreboard players operation @s daisukes.sn_len = #start daisukes.sn
function daisukes:modifiers/snake/track
function daisukes:modifiers/snake/touch
