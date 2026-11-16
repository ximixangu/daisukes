# Com al cor que han picat (al centre del bloc). Una destral compta doble (es mira abans d'esborrar el cop: si no, no hi ha "attacker")
scoreboard players set #axe daisukes.heart 0
execute on attacker if items entity @s weapon.mainhand #minecraft:axes run scoreboard players set #axe daisukes.heart 1
data remove entity @s attack
scoreboard players add @s daisukes.heart_t 1
execute if score #axe daisukes.heart matches 1 run scoreboard players add @s daisukes.heart_t 1
particle minecraft:block{block_state: "minecraft:creaking_heart"} ~ ~ ~ 0.3 0.3 0.3 0 12 normal @a[distance=..32]
execute if score @s daisukes.heart_t matches 1 run playsound minecraft:block.creaking_heart.hurt block @a ~ ~ ~ 1 0.9
execute if score @s daisukes.heart_t matches 2 run playsound minecraft:block.creaking_heart.hurt block @a ~ ~ ~ 1 1.1
# El seu creaking s'estremeix
execute store result score #o daisukes.heart run scoreboard players get @s daisukes.heart
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] if score @s daisukes.heart = #o daisukes.heart at @s run playsound minecraft:entity.creaking.twitch hostile @a ~ ~ ~ 1 1
execute if score @s daisukes.heart_t matches 3.. run setblock ~ ~ ~ minecraft:air
