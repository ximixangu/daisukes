# Un modificador del registre (menu/modifiers/show): #i es el seu index i 1000 + #i el numero del seu boto
data modify storage daisukes:menu entry.id set from storage daisukes:menu queue[0]
scoreboard players operation #code daisukes.math = #i daisukes.math
scoreboard players add #code daisukes.math 1000
execute store result storage daisukes:menu entry.code int 1 run scoreboard players get #code daisukes.math
function daisukes:menu/modifiers/entry with storage daisukes:menu entry

data remove storage daisukes:menu queue[0]
scoreboard players add #i daisukes.math 1
execute if data storage daisukes:menu queue[0] run function daisukes:menu/modifiers/show_loop
