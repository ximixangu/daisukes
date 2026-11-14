# Un marcador amb nom fa de tirador: el missatge de mort diu "was shot by Arrow Rush".
# Es posa darrere teu perque un escut aixecat no ho pugui parar
execute rotated ~ 0 positioned ^ ^1 ^-1.5 run summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.rush_bow"], CustomName: "Arrow Rush"}
$damage @s $(dmg) minecraft:arrow by @e[type=minecraft:marker,tag=daisukes.rush_bow,limit=1]
kill @e[type=minecraft:marker,tag=daisukes.rush_bow]
# Volea: arcs que es disparen i fletxes (cops critics) que et venen de tot arreu
playsound minecraft:entity.arrow.shoot player @a[distance=..16] ~ ~ ~ 1 0.9
playsound minecraft:entity.arrow.shoot player @a[distance=..16] ~ ~ ~ 1 1.1
playsound minecraft:entity.arrow.hit player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:crit ~2.5 ~1.4 ~0 -1 -0.1 0 2 0
particle minecraft:crit ~-2.5 ~1.4 ~0 1 -0.1 0 2 0
particle minecraft:crit ~0 ~1.4 ~2.5 0 -0.1 -1 2 0
particle minecraft:crit ~0 ~1.4 ~-2.5 0 -0.1 1 2 0
particle minecraft:crit ~1.8 ~1.4 ~1.8 -0.7 -0.1 -0.7 2 0
particle minecraft:crit ~-1.8 ~1.4 ~-1.8 0.7 -0.1 0.7 2 0
particle minecraft:crit ~1.8 ~1.4 ~-1.8 -0.7 -0.1 0.7 2 0
particle minecraft:crit ~-1.8 ~1.4 ~1.8 0.7 -0.1 -0.7 2 0
