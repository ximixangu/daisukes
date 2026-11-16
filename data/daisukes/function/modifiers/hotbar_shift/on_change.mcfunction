# L'inventari ha canviat: al tick següent cal refer la il·lusió. Si el modificador ja no és actiu, no torna a escoltar.
execute unless predicate daisukes:hotbar_shift/active run return 0
advancement revoke @s only daisukes:hotbar_shift/changed
scoreboard players set @s daisukes.shift_dirty 1
