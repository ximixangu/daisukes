# Titol amb la pagina i, al principi del text, quants n'hi ha d'activats (menu/modifiers/show). Sense cap, el repte
# no pot comencar
$data modify storage daisukes:menu dialog.title set value {text: "Modifiers ($(page)/$(pages))", color: "red", bold: true}
$data modify storage daisukes:menu dialog.body[0].contents.extra[0].text set value "$(enabled) of $(total) enabled. "
execute if score #enabled daisukes.math matches 0 run data modify storage daisukes:menu dialog.body[0].contents.extra[0] set value {text: "No modifiers enabled: the challenge can't start. ", color: "red"}
