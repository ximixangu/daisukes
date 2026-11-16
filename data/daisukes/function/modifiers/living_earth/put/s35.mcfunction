# amethyst_cluster, large_amethyst_bud, medium_amethyst_bud, small_amethyst_bud
$execute if block ~ ~ ~ $(Name)[facing=$(facing),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),waterlogged=$(waterlogged)] strict
return 1
