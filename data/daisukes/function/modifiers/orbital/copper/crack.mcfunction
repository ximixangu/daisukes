# Cop al coure: s'abonyega (es fa mes petit), espurnes i trossos, i recula una mica (en calen tres)
scoreboard players operation #id daisukes.orb = @s daisukes.orb_id
execute as @e[type=minecraft:item_display,tag=daisukes.orb_skin] if score @s daisukes.orb_id = #id daisukes.orb run scoreboard players remove @s daisukes.orb_size 120
execute as @e[type=minecraft:item_display,tag=daisukes.orb_skin] if score @s daisukes.orb_id = #id daisukes.orb run function daisukes:modifiers/orbital/size {k: 1000, d: 2}
execute at @s positioned ~ ~0.4 ~ run particle minecraft:wax_off ~ ~ ~ 0.3 0.3 0.3 0.4 10
execute at @s positioned ~ ~0.4 ~ run particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.5 12
execute at @s positioned ~ ~0.4 ~ run particle minecraft:block{block_state: "minecraft:copper_block"} ~ ~ ~ 0.2 0.2 0.2 0 10
execute if score @s daisukes.orb_hp matches 2 at @s run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 1 1.1
execute if score @s daisukes.orb_hp matches 1 at @s run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:block.copper.hit master @a ~ ~ ~ 1 0.8
execute rotated as @s run rotate @s ~30 0
