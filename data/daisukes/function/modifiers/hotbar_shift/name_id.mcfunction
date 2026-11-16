# Nom per defecte: item.minecraft.<id> o, si no existeix, block.minecraft.<id>
$data modify storage daisukes:shift look.n.extra append value {translate:"item.minecraft.$(k)",fallback:"%s",with:[{translate:"block.minecraft.$(k)"}]}
