# Com a un bloc negre que ja no hi es. Si era sorra o grava i ha caigut, o si l'ha empes un pisto, el bloc que es mou
# desapareix (no en queda cap de normal): com si l'haguessin trencat, torna negre al seu lloc
execute positioned ~ ~-0.5 ~ run kill @e[type=minecraft:falling_block,distance=..0.5,sort=nearest,limit=1]
function daisukes:modifiers/living_earth/pushed
function daisukes:modifiers/living_earth/rehole
