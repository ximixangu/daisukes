# Com a candidata triada, al seu origen: passa a caixa de la parella #next, amb el compte enrere sencer, i sona
tag @s remove daisukes.we_cand
tag @s add daisukes.we_box
scoreboard players operation @s daisukes.we_id = #next daisukes.we
scoreboard players operation @s daisukes.we_t = #delay_t daisukes.we
function daisukes:modifiers/world_edit/box/appear with storage daisukes:world_edit config.fx
