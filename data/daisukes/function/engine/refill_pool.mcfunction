# Omple la pool amb tots els modificadors registrats, en format [{id: "agua"}, {id: "alyra"}, ...]
# (amb compounds es poden treure elements pel nom: pool[{id: "agua"}])
scoreboard players set #refilled daisukes.math 1

data modify storage daisukes:temp pool set value []

data remove storage daisukes:temp refill_queue
data modify storage daisukes:temp refill_queue set from storage daisukes:registry modifiers

execute if data storage daisukes:temp refill_queue[0] run function daisukes:engine/refill_pool_loop
