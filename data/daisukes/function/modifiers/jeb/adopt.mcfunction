# Com a jugador, als seus peus: li surt la seva jeb_ (invulnerable, de colors) i, si no en te, una corretja
scoreboard players set @s daisukes.jeb 0
summon minecraft:sheep ~ ~ ~ {CustomName: "jeb_", Invulnerable: 1b, Tags: ["daisukes.jeb_sheep"]}
execute unless items entity @s container.* minecraft:lead run give @s minecraft:lead
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 12
playsound minecraft:entity.sheep.ambient neutral @a ~ ~ ~ 1 1.2
