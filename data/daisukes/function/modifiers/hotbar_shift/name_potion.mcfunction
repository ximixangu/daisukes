# item.minecraft.<tipus>.effect.<efecte>: «Potion of Healing», «Splash Potion of Swiftness», «Arrow of Poison»...
# L'efecte és el nom de la poció sense long_ ni strong_ (si no en té, «empty»)
data modify storage daisukes:shift args.k set string storage daisukes:shift src.id 10
data modify storage daisukes:shift args.e set value "empty"
data modify storage daisukes:shift args.e set string storage daisukes:shift src.components."minecraft:potion_contents".potion 10
data remove storage daisukes:shift args.pre
data modify storage daisukes:shift args.pre set string storage daisukes:shift args.e 0 7
execute if data storage daisukes:shift args{pre:"strong_"} run data modify storage daisukes:shift args.e set string storage daisukes:shift args.e 7
data remove storage daisukes:shift args.pre
data modify storage daisukes:shift args.pre set string storage daisukes:shift args.e 0 5
execute if data storage daisukes:shift args{pre:"long_"} run data modify storage daisukes:shift args.e set string storage daisukes:shift args.e 5
data modify storage daisukes:shift args.e set from storage daisukes:shift src.components."minecraft:potion_contents".custom_name
function daisukes:modifiers/hotbar_shift/name_potion_key with storage daisukes:shift args
