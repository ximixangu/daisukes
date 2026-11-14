# Al centre de l'orba: la hitbox (0,8 d'alt) hi queda centrada i les pells la segueixen
tp @s ~ ~-0.4 ~
tag @s add daisukes.orb_seen
scoreboard players operation #id daisukes.orb = @s daisukes.orb_id
execute as @e[type=minecraft:item_display,tag=daisukes.orb_skin] if score @s daisukes.orb_id = #id daisukes.orb run function daisukes:modifiers/orbital/skin
