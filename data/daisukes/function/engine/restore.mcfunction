# Start despres de debug/stop: tornen els modificadors que hi havia (debug/stop els havia desat, amb els
# seus textos). Com que stop els havia desactivat, es tornen a activar
data modify storage daisukes:state active set from storage daisukes:state stopped.active
data modify storage daisukes:temp display_texts set from storage daisukes:state stopped.display_texts
data modify storage daisukes:temp chat_texts set from storage daisukes:state stopped.chat_texts
data remove storage daisukes:state stopped

function daisukes:engine/activate_execute
