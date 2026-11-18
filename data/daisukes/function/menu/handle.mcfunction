# Un jugador ha fet clic a un boto dels dialegs del menu, que fan /trigger daisukes.menu set <numero>
# (/trigger el pot fer servir qualsevol jugador, sense trucs ni op). Ho crida core/tick com a aquest jugador.
# Dialegs: daisukes:menu (el principal; tambe surt al menu de pausa i amb la tecla d'accions rapides, G),
# daisukes:new_game (confirmacio) i els que es munten aqui amb la configuracio actual (menu/settings, menu/modifiers).
# No pausen el joc i es queden oberts despres del clic (after_action none): aqui sempre se'n mostra un altre o es tanca.
#   1 menu principal     2 opcions     3 modificadors     4 comencar     5 partida nova (ja confirmada)
#   6 confirmar partida nova     9 tancar     11-14 opcions predefinides (Default, Easy, Hard, Chaos)
#   21-29 pagina de modificadors     31-39 activar-los tots     41-49 desactivar-los tots (i aquella pagina)
#   1000-1999 activar o desactivar un modificador (1000 + el seu index al registre)
#   10000000-19999999 desar les opcions (una xifra per opcio, menu/settings/save)
# Les funcions d'aqui no toquen #menu (cada linia el torna a mirar)
scoreboard players operation #menu daisukes.math = @s daisukes.menu
scoreboard players set @s daisukes.menu 0

execute if score #menu daisukes.math matches 1 run function daisukes:menu/back
execute if score #menu daisukes.math matches 2 run function daisukes:menu/settings/show
execute if score #menu daisukes.math matches 3 run function daisukes:menu/modifiers/page
execute if score #menu daisukes.math matches 4 run function daisukes:menu/start
execute if score #menu daisukes.math matches 5 run function daisukes:menu/new_game
execute if score #menu daisukes.math matches 6 run dialog show @s daisukes:new_game
execute if score #menu daisukes.math matches 9 run dialog clear @s
execute if score #menu daisukes.math matches 11..14 run function daisukes:menu/settings/preset
execute if score #menu daisukes.math matches 21..29 run function daisukes:menu/modifiers/page
execute if score #menu daisukes.math matches 31..39 run function daisukes:menu/modifiers/enable_all
execute if score #menu daisukes.math matches 41..49 run function daisukes:menu/modifiers/disable_all
execute if score #menu daisukes.math matches 1000..1999 run function daisukes:menu/modifiers/toggle
execute if score #menu daisukes.math matches 10000000..19999999 run function daisukes:menu/settings/save
