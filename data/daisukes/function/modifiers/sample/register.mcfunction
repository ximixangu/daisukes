# PLANTILLA per a un modificador nou (no esta registrat). Per afegir-ne un:
#  1. Copia aquesta carpeta amb el nom del modificador (p. ex. modifiers/el_meu/) i canvia "sample" pel nom
#  2. Afegeix "daisukes:modifiers/el_meu/register" a tags/function/register.json
#  3. Crea l'entrada del llibre d'avancaments: advancement/gui/modifiers/el_meu.json (copia'n una altra)
#  4. Opcional: si pot deixar restes (entitats, atributs a jugadors...), crea leftovers.mcfunction
#     i afegeix-lo a tags/function/leftovers.json
#
# Funcions que crida el motor (les quatre han d'existir, encara que siguin buides):
#   register   -> en carregar: nom, descripcio i incompatibilitats
#   activate   -> quan surt a la tirada (sense @s: no s'executa com cap jugador)
#   deactivate -> quan s'acaba (sense @s). Ha de treure tot el que hagi posat
#   tick       -> cada tick mentre esta actiu (sense @s)
data modify storage daisukes:registry modifiers append value "sample"
data modify storage daisukes:texts map.sample set value {"text": "Dummy", "color": "white", "bold": true}
data modify storage daisukes:texts desc.sample set value "What the modifier does, in one sentence (shown when hovering over its name in chat)."

# Opcional: modificadors que no poden sortir a la vegada que aquest (tants com vulguis).
# Es reciproc: nomes cal posar-ho en un dels dos register.
# data modify storage daisukes:registry incompatible.sample set value ["moon", "dark"]
