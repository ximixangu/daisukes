# Macro: {a: "modificador", b: "modificador"} -> a i b no poden sortir alhora (s'apunta en els dos sentits)

# Avis si el nom no es de cap modificador registrat (normalment, una errada d'escriptura)
$execute unless data storage daisukes:registry {modifiers: ["$(b)"]} run tellraw @a [{"text": "[Daisuke's] ", "color": "dark_red"}, {"text": "Incompatibilitat amb un modificador que no existeix: ", "color": "gray"}, {"text": "$(a) -> $(b)", "color": "yellow"}]

$execute unless data storage daisukes:registry conflicts.$(a)[{id: "$(b)"}] run data modify storage daisukes:registry conflicts.$(a) append value {id: "$(b)"}
$execute unless data storage daisukes:registry conflicts.$(b)[{id: "$(a)"}] run data modify storage daisukes:registry conflicts.$(b) append value {id: "$(a)"}
