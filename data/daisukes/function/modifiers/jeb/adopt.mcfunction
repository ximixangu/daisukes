# Com a jugador, als seus peus: li surt la seva jeb_ (invulnerable, de colors) i, si no en te, una corretja
scoreboard players set @s daisukes.jeb 0
summon minecraft:sheep ~ ~ ~ {CustomName: "jeb_", PersistenceRequired: 1b, Tags: ["daisukes.jeb_sheep"], attributes: [{id: "minecraft:max_health", base: 1024d}], Health: 1024f, active_effects: [{id: "minecraft:resistance", amplifier: 4b, duration: -1, show_particles: 0b, show_icon: 0b}]}
execute unless items entity @s container.* minecraft:lead run give @s minecraft:lead
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 12
playsound minecraft:entity.sheep.ambient neutral @a ~ ~ ~ 1 1.2
