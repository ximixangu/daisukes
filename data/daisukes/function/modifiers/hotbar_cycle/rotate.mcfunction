# 1. Invocar un Armor Stand temporal e invisible en la posición del jugador
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["daisukes.temp_holder"]}

# 2. Copiar el ítem del slot 8 a la cabeza del Armor Stand
item replace entity @e[type=armor_stand,tag=daisukes.temp_holder,limit=1] armor.head from entity @s hotbar.8

# 3. Desplazar los ítems de la hotbar hacia la derecha
item replace entity @s hotbar.8 from entity @s hotbar.7
item replace entity @s hotbar.7 from entity @s hotbar.6
item replace entity @s hotbar.6 from entity @s hotbar.5
item replace entity @s hotbar.5 from entity @s hotbar.4
item replace entity @s hotbar.4 from entity @s hotbar.3
item replace entity @s hotbar.3 from entity @s hotbar.2
item replace entity @s hotbar.2 from entity @s hotbar.1
item replace entity @s hotbar.1 from entity @s hotbar.0

# 4. Pasar el ítem guardado en el Armor Stand al slot 0 del jugador
item replace entity @s hotbar.0 from entity @e[type=armor_stand,tag=daisukes.temp_holder,limit=1] armor.head

kill @e[type=armor_stand,tag=daisukes.temp_holder]
playsound minecraft:item.bundle.drop_contents player @s ~ ~ ~ 0.8 1.4