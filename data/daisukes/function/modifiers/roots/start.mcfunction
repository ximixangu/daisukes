# Com a cada jugador quan surten les arrels (tots alhora), a les 4 cantonades del seu bloc. No hi ha avis:
# si ja es movia (caminant o corrent, encara que sigui a poc a poc), les esquiva. Si esta quiet o ajupit, l'agafen al moment
scoreboard players operation #me daisukes.roots = @s daisukes.roots
execute if score @s daisukes.roots_q matches 10.. run return run function daisukes:modifiers/roots/dodge
scoreboard players set @s daisukes.roots_p 1
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_center", "daisukes.roots_new"]}
scoreboard players operation @e[tag=daisukes.roots_new] daisukes.roots = #me daisukes.roots
tag @e[tag=daisukes.roots_new] remove daisukes.roots_new
execute align xz run function daisukes:modifiers/roots/tufts
execute align xz positioned ~0.5 ~ ~0.5 run playsound minecraft:block.rooted_dirt.break player @a ~ ~ ~ 0.8 0.6
execute align xz positioned ~0.5 ~ ~0.5 run playsound minecraft:block.hanging_roots.place player @a ~ ~ ~ 0.7 0.8
