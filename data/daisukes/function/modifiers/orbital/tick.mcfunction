scoreboard players add #time daisukes.orb 1
# Cada 25 s s'hi afegeix un tipus: slime, ender i coure
execute if score #time daisukes.orb matches ..40 run function daisukes:modifiers/orbital/intro_tick

# Trossos de les orbes trencades. Van abans que els jugadors perque els nous s'animin el tick seguent
execute as @e[type=minecraft:item_display,tag=daisukes.orb_shard_new] run data merge entity @s {start_interpolation: 0, interpolation_duration: 9, transformation: {translation: [0f, -0.35f, 1.1f], left_rotation: {angle: 3.1f, axis: [1f, 0f, 0f]}, scale: [0f, 0f, 0f]}}
tag @e[type=minecraft:item_display,tag=daisukes.orb_shard_new] remove daisukes.orb_shard_new
scoreboard players add @e[type=minecraft:item_display,tag=daisukes.orb_shard] daisukes.orb_age 1
kill @e[type=minecraft:item_display,tag=daisukes.orb_shard,scores={daisukes.orb_age=10..}]

execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/orbital/player

# Orbes sense amo (mort, espectador, desconnectat) o que han quedat d'abans: s'esvaeixen
execute as @e[tag=daisukes.orb_body,tag=!daisukes.orb_seen] at @s run function daisukes:modifiers/orbital/fizzle
tag @e[tag=daisukes.orb_seen] remove daisukes.orb_seen
