# exposed_lightning_rod, lightning_rod, oxidized_lightning_rod, waxed_exposed_lightning_rod, waxed_lightning_rod, waxed_oxidized_lightning_rod...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)] strict
return 1
