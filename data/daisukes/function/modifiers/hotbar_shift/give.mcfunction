# Deixa x a terra en aquesta posició, llest per recollir
summon item ~ ~0.3 ~ {Tags:["daisukes.shift_new"],PickupDelay:0s,Item:{id:"minecraft:stone",count:1}}
data modify entity @e[type=item,tag=daisukes.shift_new,limit=1] Item set from storage daisukes:shift x
tag @e[type=item,tag=daisukes.shift_new] remove daisukes.shift_new
