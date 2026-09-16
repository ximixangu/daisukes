data remove storage daisukes:temp queue
data modify storage daisukes:temp queue set from storage daisukes:state active

execute if data storage daisukes:temp queue[0] run function daisukes:engine/activate_active_loop