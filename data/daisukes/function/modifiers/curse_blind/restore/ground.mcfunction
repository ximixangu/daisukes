# Com a objecte a terra que sembla un structure void sense ser-ho: torna a ser normal (i el de dins si es un bundle)
data remove entity @s Item.components."minecraft:item_model"
data remove entity @s Item.components."minecraft:bundle_contents"[{components: {"minecraft:item_model": "minecraft:structure_void"}}].components."minecraft:item_model"
