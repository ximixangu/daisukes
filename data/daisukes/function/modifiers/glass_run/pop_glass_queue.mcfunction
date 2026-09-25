# 1. Copiar la posicion Pos [0] a la macro
data modify storage daisukes:glass_run x set from storage daisukes:data GlassQueue[0][0]
data modify storage daisukes:glass_run y set from storage daisukes:data GlassQueue[0][1]
data modify storage daisukes:glass_run z set from storage daisukes:data GlassQueue[0][2]

# 3. Llamar a la macro pasandole las coordenadas
function daisukes:modifiers/glass_run/break_glass with storage daisukes:glass_run

# 2. Eliminar la posicion procesada de la cola FIFO
data remove storage daisukes:data GlassQueue[0]