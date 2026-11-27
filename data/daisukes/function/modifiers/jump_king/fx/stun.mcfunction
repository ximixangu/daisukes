# Com al jugador estampat: aixafat (el doble de #squat %), es va refent a poc a poc. I estrelletes de mareig
scoreboard players operation #s daisukes.jk = #squat daisukes.jk
scoreboard players operation #s daisukes.jk *= #20 daisukes.jk
scoreboard players operation #s daisukes.jk *= @s daisukes.jk_st
scoreboard players operation #s daisukes.jk /= #splat_t daisukes.jk
function daisukes:modifiers/jump_king/fx/squat
scoreboard players operation #n daisukes.jk = @s daisukes.jk_st
scoreboard players operation #n daisukes.jk %= #4 daisukes.jk
execute if score #n daisukes.jk matches 0 run particle minecraft:crit ~ ~1.3 ~ 0.3 0.05 0.3 0 3
