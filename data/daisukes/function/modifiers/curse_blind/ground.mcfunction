# Macro: {r}. Com a jugador, on es: objectes a terra a r blocs o menys que encara es veuen. Es maleeixen abans que
# els agafi, i aixi s'apilen amb els que ja te
$execute as @e[type=minecraft:item,distance=..$(r)] if items entity @s contents *[minecraft:item_model,!minecraft:item_model="minecraft:structure_void",!minecraft:item_model="minecraft:air"] run item modify entity @s contents daisukes:curse_blind/curse
