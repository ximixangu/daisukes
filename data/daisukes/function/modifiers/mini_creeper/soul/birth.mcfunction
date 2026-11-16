# Com al mob que s'acaba de morir, als seus peus. Identificador del jugador que l'ha mort (el primer cop)
# i quantes animes l'empaiten ja
execute as @a[tag=daisukes.soul_prey] unless score @s daisukes.soul_id matches 1.. store result score @s daisukes.soul_id run scoreboard players add #next daisukes.soul 1
scoreboard players operation #prey daisukes.soul = @a[tag=daisukes.soul_prey,limit=1] daisukes.soul_id
scoreboard players set #n daisukes.soul 0
execute as @e[type=minecraft:interaction,tag=daisukes.soul] if score @s daisukes.soul_id = #prey daisukes.soul run scoreboard players add #n daisukes.soul 1

# L'anima s'escapa del cos entre animes i flames blaves
particle minecraft:soul ~ ~0.6 ~ 0.25 0.3 0.25 0.04 14 force
particle minecraft:soul_fire_flame ~ ~0.6 ~ 0.2 0.3 0.2 0.03 12 force
playsound minecraft:particle.soul_escape hostile @a ~ ~ ~ 1.5 1
playsound minecraft:particle.soul_escape hostile @a ~ ~ ~ 1.5 1.5
execute positioned ~ ~0.3 ~ summon minecraft:interaction run function daisukes:modifiers/mini_creeper/soul/setup
