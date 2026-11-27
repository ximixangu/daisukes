# Com al jugador: el pal amb els encanteris (nivells #lc...#ff) a la ranura de la cadira, i empenta a l'acte. En
# sortir del mode espectador el joc aplica tot d'una el que fan els encanteris del que porta posat; en espectador,
# posar i treure el pal no fa soroll ni vibracio. Al final la ranura torna a ser buida, i en el tick del jugador no hi
# ha res de nou. Si la ranura ja la fa servir una altra cosa, no
execute if items entity @s saddle * run return 0
function daisukes:modifiers/jump_king/math/gm_get
gamemode spectator
item replace entity @s saddle with minecraft:stick[minecraft:custom_data={daisukes_jk:{}},minecraft:equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty",allowed_entities:"minecraft:player"}]
item modify entity @s saddle daisukes:jump_king/push
function daisukes:modifiers/jump_king/math/gm_back
gamemode spectator
item replace entity @s saddle with minecraft:air
function daisukes:modifiers/jump_king/math/gm_back
