$scoreboard players set @s daisukes.orb_color $(glow)
scoreboard players operation #id daisukes.orb = @s daisukes.orb_id
$execute as @e[type=minecraft:item_display,tag=daisukes.orb_skin] if score @s daisukes.orb_id = #id daisukes.orb run data modify entity @s item.id set value "$(item)"
$execute at @s run playsound minecraft:$(note) master @a ~ ~ ~ 0.8 $(pitch)
execute at @s positioned ~ ~0.4 ~ run particle minecraft:scrape ~ ~ ~ 0.3 0.3 0.3 0.4 10
