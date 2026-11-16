# Com a cada jugador que pot jugar
execute unless score @s daisukes.heart matches 1.. run function daisukes:modifiers/heartbound/join
scoreboard players operation #me daisukes.heart = @s daisukes.heart
tag @s add daisukes.heart_me
# No el veiem des de fa mes d'un tick (ha mort, era en creatiu o espectador, s'havia desconnectat): fora la seva parella i 20 s lliure
scoreboard players operation #gap daisukes.heart = #now daisukes.heart
scoreboard players operation #gap daisukes.heart -= @s daisukes.heart_l
scoreboard players operation @s daisukes.heart_l = #now daisukes.heart
execute if score #gap daisukes.heart matches 2.. if entity @s[tag=daisukes.heart_bound] run function daisukes:modifiers/heartbound/absent
execute if entity @s[tag=daisukes.heart_bound] if score #sec daisukes.heart matches 0 run function daisukes:modifiers/heartbound/bound
execute unless entity @s[tag=daisukes.heart_bound] run function daisukes:modifiers/heartbound/waiting
tag @s remove daisukes.heart_me
