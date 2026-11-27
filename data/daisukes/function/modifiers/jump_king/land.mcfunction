# Com al jugador que torna a tocar a terra despres del salt. Si ha caigut de molt amunt (#splat blocs amb la gravetat
# de sempre, 0,08; amb menys gravetat, de mes amunt), s'estampa. Sobre slime o un llit rebota: no
scoreboard players operation #n daisukes.jk = @s daisukes.jk_ym
scoreboard players operation #n daisukes.jk -= #y daisukes.jk
scoreboard players operation #n daisukes.jk *= @s daisukes.jk_g
scoreboard players operation #m daisukes.jk = #splat daisukes.jk
scoreboard players operation #m daisukes.jk *= #80000 daisukes.jk
function daisukes:modifiers/jump_king/end
execute if score #splat daisukes.jk matches 1.. if score #n daisukes.jk >= #m daisukes.jk unless block ~ ~-0.5 ~ minecraft:slime_block unless block ~ ~-0.5 ~ #minecraft:beds run function daisukes:modifiers/jump_king/splat
