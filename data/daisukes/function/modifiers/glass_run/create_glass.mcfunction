# 1. Transformar el bloque a cristal
setblock ~ ~-1 ~ minecraft:glass
data remove storage daisukes:temp pos

# 2. Invocar el marcador en el centro del bloque
summon marker ~ ~-1 ~ {Tags:["daisukes.glass_marker"]}

# 3. Guardar las coordenadas Pos del marcador [x, y, z] directamente en la cola del Storage
execute as @e[type=marker,tag=daisukes.glass_marker,sort=nearest,limit=1] run data modify storage daisukes:temp pos set from entity @s Pos
data modify storage daisukes:data GlassQueue append from storage daisukes:temp pos

# 4. Programar la ejecucion para dentro de 2 segundos
schedule function daisukes:modifiers/glass_run/pop_glass_queue 2s append