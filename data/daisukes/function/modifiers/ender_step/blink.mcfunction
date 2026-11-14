# Com a jugador que acaba de saltar, des d'on era
# On era: espurnes que s'esvaeixen i un rastre fins on ha aparegut
particle minecraft:reverse_portal ~ ~1 ~ 0.2 0.4 0.2 0.02 8
data modify storage daisukes:ender_step fx.to set from entity @s Pos
function daisukes:modifiers/ender_step/trail with storage daisukes:ender_step fx

# On arriba: purpurina que s'hi concentra i un so curt i suau, alternant dues notes com si fossin passes
execute at @s run particle minecraft:portal ~ ~0.9 ~ 0.2 0.4 0.2 0.5 14
scoreboard players add #foot daisukes.ender_step 1
execute if score #foot daisukes.ender_step matches 2.. run scoreboard players set #foot daisukes.ender_step 0
execute if score #foot daisukes.ender_step matches 0 at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.12 1.6
execute if score #foot daisukes.ender_step matches 1 at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.12 1.85

# El bloc on ha aparegut ja es on es (no compta com un pas nou)
execute store result score @s daisukes.ender_step_x run data get storage daisukes:ender_step fx.to[0]
execute store result score @s daisukes.ender_step_z run data get storage daisukes:ender_step fx.to[2]
