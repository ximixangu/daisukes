# Com al jugador: les 4 cordes surten dels plomalls i l'agafen pels peus
scoreboard players set @s daisukes.roots_p 2
scoreboard players set @s daisukes.roots_n 0
scoreboard players set @s daisukes.roots_s 0
scoreboard players set @s daisukes.roots_v -1
scoreboard players set #bound daisukes.roots 1
tag @s add daisukes.roots_tied
attribute @s minecraft:jump_strength modifier add daisukes:roots -1 add_multiplied_total
attribute @s minecraft:entity_interaction_range modifier add daisukes:roots -1 add_multiplied_total
execute as @e[type=minecraft:block_display,tag=daisukes.roots_tuft,tag=daisukes.roots_mine,tag=!daisukes.roots_dying] at @s run function daisukes:modifiers/roots/rope
summon minecraft:interaction ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_cut", "daisukes.roots_new"], width: 1.4f, height: 0.9f, response: true}
scoreboard players operation @e[tag=daisukes.roots_new] daisukes.roots = #me daisukes.roots
tag @e[tag=daisukes.roots_new] remove daisukes.roots_new
playsound minecraft:item.lead.tied player @a ~ ~ ~ 1 0.9
execute if dimension minecraft:the_nether run playsound minecraft:block.stem.place player @a ~ ~ ~ 1 0.8
execute unless dimension minecraft:the_nether run playsound minecraft:block.mangrove_roots.place player @a ~ ~ ~ 1 0.8
particle minecraft:block{block_state: "minecraft:rooted_dirt"} ~ ~0.1 ~ 0.3 0.05 0.3 0 12 normal @a[distance=..32]
