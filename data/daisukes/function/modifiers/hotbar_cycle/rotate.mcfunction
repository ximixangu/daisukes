# Com a jugador, als seus peus. Cada objecte de la barra passa a la ranura de la dreta (el de la 9 va a la 1).
# La ranura temporal es un armor stand invisible als peus del jugador (sempre carregat; abans es creava al
# punt d'aparicio del mon, i si no estava carregat es perdia l'objecte de la ranura 9)
summon minecraft:armor_stand ~ ~ ~ {Invisible: 1b, Marker: 1b, NoGravity: 1b, Silent: 1b, Tags: ["daisukes.hotbar_holder"]}
execute unless entity @n[type=minecraft:armor_stand,tag=daisukes.hotbar_holder,distance=..1] run return fail

item replace entity @n[type=minecraft:armor_stand,tag=daisukes.hotbar_holder] weapon.mainhand from entity @s hotbar.8

item replace entity @s hotbar.8 from entity @s hotbar.7
item replace entity @s hotbar.7 from entity @s hotbar.6
item replace entity @s hotbar.6 from entity @s hotbar.5
item replace entity @s hotbar.5 from entity @s hotbar.4
item replace entity @s hotbar.4 from entity @s hotbar.3
item replace entity @s hotbar.3 from entity @s hotbar.2
item replace entity @s hotbar.2 from entity @s hotbar.1
item replace entity @s hotbar.1 from entity @s hotbar.0

item replace entity @s hotbar.0 from entity @n[type=minecraft:armor_stand,tag=daisukes.hotbar_holder] weapon.mainhand

# Es buida abans de treure'l, per si de cas (que no en caigui res)
item replace entity @n[type=minecraft:armor_stand,tag=daisukes.hotbar_holder] weapon.mainhand with minecraft:air
kill @e[type=minecraft:armor_stand,tag=daisukes.hotbar_holder]
playsound minecraft:item.bundle.drop_contents player @s ~ ~ ~ 0.8 1.4
