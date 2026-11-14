# Soroll d'aquest tick: caminar 1 cada 10 cm, correr 2, saltar 50, pegar 40. Ajupit no en fa
scoreboard players operation #n daisukes.hush = @s daisukes.hush_sprint
scoreboard players operation #n daisukes.hush *= #2 daisukes.hush
scoreboard players operation #n daisukes.hush += @s daisukes.hush_walk
scoreboard players operation #n daisukes.hush /= #10 daisukes.hush
execute if score @s daisukes.hush_jump matches 1.. run scoreboard players add #n daisukes.hush 50
execute if score @s daisukes.hush_hit matches 1.. run scoreboard players add #n daisukes.hush 40

execute if score #phase daisukes.hush matches 0 if score #deaf daisukes.hush matches ..0 run scoreboard players operation #noise daisukes.hush += #n daisukes.hush

# Silenci: si et mous mes d'un bloc, saltes o pegues, t'enxampen (una vegada per silenci)
execute if score #phase daisukes.hush matches 2 run scoreboard players operation @s daisukes.hush_still += #n daisukes.hush
execute if score #phase daisukes.hush matches 2 if score @s daisukes.hush_still matches 10.. unless entity @s[tag=daisukes.hush_caught] run function daisukes:modifiers/hush/caught

scoreboard players operation @s daisukes.hush += #n daisukes.hush
execute if score #ring daisukes.hush matches 0 run function daisukes:modifiers/hush/ring
