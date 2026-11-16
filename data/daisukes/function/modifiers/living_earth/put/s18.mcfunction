# acacia_fence_gate, bamboo_fence_gate, birch_fence_gate, cherry_fence_gate, crimson_fence_gate, dark_oak_fence_gate...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),in_wall=$(in_wall),open=$(open),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),in_wall=$(in_wall),open=$(open),powered=$(powered)] strict
return 1
