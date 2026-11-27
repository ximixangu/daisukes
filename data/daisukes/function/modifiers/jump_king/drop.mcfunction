# Com al jugador que ha mort o ha tornat a entrar: res a mitges (els modificadors d'atribut es guarden al jugador). Qui
# torna a entrar torna a provar si pot fer servir Jump King (potser ara el mon ja s'ha reobert)
execute if score @s daisukes.jk_left matches 1.. run tag @s remove daisukes.jk_ok
execute if score @s daisukes.jk_left matches 1.. run tag @s remove daisukes.jk_off
scoreboard players set @s daisukes.jk_dead 0
scoreboard players set @s daisukes.jk_left 0
function daisukes:modifiers/jump_king/reset
