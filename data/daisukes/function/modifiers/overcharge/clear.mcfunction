# Fora markers (de sobre dels mobs, ombres, polsos i el punter) i marques dels mobs. Els creepers que s'havien
# carregat tornen a ser normals
kill @e[type=minecraft:marker,tag=daisukes.oc_rider]
kill @e[type=minecraft:marker,tag=daisukes.oc_shadow]
kill @e[type=minecraft:marker,tag=daisukes.oc_pulse]
kill @e[type=minecraft:marker,tag=daisukes.oc_pointer]
execute as @e[type=minecraft:creeper,tag=daisukes.oc_charged] run data merge entity @s {powered: false}
tag @e[tag=daisukes.oc_charged] remove daisukes.oc_charged
tag @e[tag=daisukes.oc_mob] remove daisukes.oc_mob
tag @e[tag=daisukes.oc_ride] remove daisukes.oc_ride
tag @e[tag=daisukes.oc_odd] remove daisukes.oc_odd
tag @e[tag=daisukes.oc_b] remove daisukes.oc_b
tag @e[tag=daisukes.oc_self] remove daisukes.oc_self
tag @e[tag=daisukes.oc_new] remove daisukes.oc_new
tag @e[tag=daisukes.oc_near] remove daisukes.oc_near
tag @a remove daisukes.oc_zapped
