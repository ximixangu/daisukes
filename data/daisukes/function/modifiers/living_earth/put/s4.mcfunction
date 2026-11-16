# acacia_fence, bamboo_fence, birch_fence, black_stained_glass_pane, blue_stained_glass_pane, brown_stained_glass_pane...
$execute if block ~ ~ ~ $(Name)[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)] run return 0
$setblock ~ ~ ~ $(Name)[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)] strict
return 1
