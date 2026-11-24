# Les caixes que esperaven desapareixen sense intercanviar res
function daisukes:modifiers/world_edit/clear
execute in minecraft:overworld run forceload remove 29998976 29998976 29999007 29999007
data remove storage daisukes:world_edit vault
data remove storage daisukes:world_edit config
data remove storage daisukes:world_edit try
data remove storage daisukes:world_edit swap
scoreboard objectives remove daisukes.we
scoreboard objectives remove daisukes.we_t
scoreboard objectives remove daisukes.we_id
