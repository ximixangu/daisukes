# Llegeix les incompatibilitats declarades als register.mcfunction de cada modificador:
#   data modify storage daisukes:registry incompatible.icarus set value ["balloon", "moon"]
# i munta la taula reciproca daisukes:registry conflicts, que es la que fa servir la tria:
#   conflicts.icarus  = [{id: "balloon"}, {id: "moon"}]
#   conflicts.balloon = [{id: "icarus"}]
#   conflicts.moon    = [{id: "icarus"}]
data remove storage daisukes:registry conflicts

data remove storage daisukes:temp build_queue
data modify storage daisukes:temp build_queue set from storage daisukes:registry modifiers

execute if data storage daisukes:temp build_queue[0] run function daisukes:engine/incompat/build_loop
