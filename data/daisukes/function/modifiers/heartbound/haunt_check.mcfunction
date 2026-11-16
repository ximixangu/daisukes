# Als peus del lloc candidat: 3 blocs d'aire (el creaking fa 2,7 d'alt) i terra ferma a sota.
# Resistencia V: els cops li arriben (s'encongeix, recula i el cor ho nota) pero no li fan res. Mai se li toca l'NBT despres:
# el creaking te "brain", i un data modify el tornaria a carregar (perdria l'objectiu cada cop)
execute unless block ~ ~ ~ #minecraft:air run return 0
execute unless block ~ ~1 ~ #minecraft:air run return 0
execute unless block ~ ~2 ~ #minecraft:air run return 0
execute if block ~ ~-1 ~ #minecraft:replaceable run return 0
summon minecraft:creaking ~ ~ ~ {Tags: ["daisukes.heart", "daisukes.heart_creaking", "daisukes.heart_new"], PersistenceRequired: 1b, CanPickUpLoot: 0b, DeathLootTable: "minecraft:empty", Health: 1000f, attributes: [{id: "minecraft:max_health", base: 1000d}], active_effects: [{id: "minecraft:resistance", amplifier: 4b, duration: -1, show_particles: 0b, show_icon: 0b}]}
scoreboard players operation @e[type=minecraft:creaking,tag=daisukes.heart_new] daisukes.heart = #me daisukes.heart
tag @e[type=minecraft:creaking,tag=daisukes.heart_new] remove daisukes.heart_new
particle minecraft:block_crumble{block_state: "minecraft:pale_oak_log"} ~ ~0.3 ~ 0.4 0.2 0.4 0 30 normal @a[distance=..48]
playsound minecraft:entity.creaking.spawn hostile @a ~ ~ ~ 1 1
scoreboard players set #ok daisukes.heart 1
