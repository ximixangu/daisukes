# Com a qui l'ha llencat: l'objecte li torna a la ma de seguida (i nomes ell el pot recollir)
data modify entity @e[type=minecraft:item,tag=daisukes.anchor_gift,limit=1] PickupDelay set value 0s
data modify entity @e[type=minecraft:item,tag=daisukes.anchor_gift,limit=1] Owner set from entity @s UUID
tp @e[type=minecraft:item,tag=daisukes.anchor_gift,limit=1] @s
