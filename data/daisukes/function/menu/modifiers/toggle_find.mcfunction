# Quin modificador es (menu/modifiers/toggle). Si l'index no existeix, args.id no hi es i no es fa res
$data modify storage daisukes:menu args.id set from storage daisukes:registry modifiers[$(index)]
