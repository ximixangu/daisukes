# Macro {rot}. Un laser per ull (a 0.117 del centre), de 0.06 de gruix, vermell amb llum propia i contorn. Neixen
# amb llargada 0 i creixen quan s'estiren (beam/len). La caixa de visibilitat es 1 x 0.01 al voltant de l'entitat
# (4.5 blocs darrere dels ulls) i el raig comenca a 4.75 (la cara). teleport_duration i interpolation_duration 3: el
# mateix suavitzat que el cap del jugador als ulls dels altres
$summon minecraft:block_display ~ ~ ~ {Tags:["daisukes.le","daisukes.le_beam","daisukes.le_new"],Rotation:$(rot),block_state:{Name:"minecraft:red_concrete"},brightness:{sky:15,block:15},Glowing:1b,glow_color_override:16726832,width:1f,height:0.01f,view_range:4f,teleport_duration:3,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.087f,-0.03f,4.75f],scale:[0.06f,0.06f,0f]}}
$summon minecraft:block_display ~ ~ ~ {Tags:["daisukes.le","daisukes.le_beam","daisukes.le_new"],Rotation:$(rot),block_state:{Name:"minecraft:red_concrete"},brightness:{sky:15,block:15},Glowing:1b,glow_color_override:16726832,width:1f,height:0.01f,view_range:4f,teleport_duration:3,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.147f,-0.03f,4.75f],scale:[0.06f,0.06f,0f]}}
scoreboard players operation @e[type=minecraft:block_display,tag=daisukes.le_new] daisukes.le_id = #me daisukes.le
tag @e[type=minecraft:block_display,tag=daisukes.le_new] add daisukes.le_seen
tag @e[type=minecraft:block_display,tag=daisukes.le_new] remove daisukes.le_new
