# Si el bloc d'aqui es del tipus de l'objecte de la ma (si l'objecte no es un bloc, la macro falla), es converteix
# en un bloc que cau, com la sorra: mateix tipus, la mateixa orientacio i el que porti a dins
$execute unless block ~ ~ ~ $(block) run return fail
# L'estat sencer (tipus i orientacio) va dins el summon: el client nomes rep l'estat que te en apareixer
data remove storage daisukes:heavy state
$data modify storage daisukes:heavy state.Name set value "$(block)"
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "facing", v: "north"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "facing", v: "south"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "facing", v: "east"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "facing", v: "west"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "facing", v: "up"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "facing", v: "down"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "axis", v: "x"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "axis", v: "z"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "half", v: "top"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "type", v: "top"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "type", v: "double"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "persistent", v: "true"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "open", v: "true"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "1"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "2"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "3"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "4"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "5"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "6"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "7"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "8"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "9"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "10"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "11"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "12"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "13"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "14"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "rotation", v: "15"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "down_east"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "down_north"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "down_south"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "down_west"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "up_east"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "up_north"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "up_south"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "up_west"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "west_up"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "east_up"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "orientation", v: "south_up"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "charges", v: "1"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "charges", v: "2"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "charges", v: "3"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "charges", v: "4"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "honey_level", v: "1"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "honey_level", v: "2"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "honey_level", v: "3"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "honey_level", v: "4"}
$function daisukes:modifiers/heavy_blocks/prop {block: "$(block)", p: "honey_level", v: "5"}
function daisukes:modifiers/heavy_blocks/summon with storage daisukes:heavy
data remove storage daisukes:heavy state
# Nomes es treu el bloc si de debo hi ha el bloc que cau (si no, el jugador el perdria)
execute unless entity @e[type=minecraft:falling_block,tag=daisukes.heavy_new] run return fail
# El que porta a dins (rusc amb abelles, caps de jugador...): nomes ho fa servir el servidor quan aterra
data modify entity @e[type=minecraft:falling_block,tag=daisukes.heavy_new,limit=1] TileEntityData set from block ~ ~ ~
tag @e[type=minecraft:falling_block,tag=daisukes.heavy_new] remove daisukes.heavy_new
# Com la sorra: si el bloc tenia aigua a dins, l'aigua es queda; si no, hi queda aire
execute if predicate {condition: "minecraft:location_check", predicate: {block: {state: {waterlogged: "true"}}}} run return run setblock ~ ~ ~ minecraft:water
setblock ~ ~ ~ minecraft:air
return 1
