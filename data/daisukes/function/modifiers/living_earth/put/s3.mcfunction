# anvil, attached_melon_stem, attached_pumpkin_stem, black_glazed_terracotta, black_wall_banner, blue_glazed_terracotta...
$execute if block ~ ~ ~ $(Name)[facing=$(facing)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing)] strict
return 1
