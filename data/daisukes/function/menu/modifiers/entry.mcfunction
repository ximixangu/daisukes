# Boto d'un modificador (menu/modifiers/show_loop), si es de la pagina. Activat: ✔ i el nom amb el seu color.
# Desactivat: ✘ i el nom en gris, ratllat. Passant-hi el ratoli: el nom, que fa i que passa si s'hi fa clic
$execute unless data storage daisukes:settings disabled.$(id) run scoreboard players add #enabled daisukes.math 1
execute if score #i daisukes.math < #first daisukes.math run return 0
execute if score #i daisukes.math > #last daisukes.math run return 0

$data modify storage daisukes:menu button set value {label: {text: "✔ ", color: "green", extra: [{text: "", color: "white"}]}, tooltip: {text: "", extra: [{text: "", bold: true}, {text: "\n"}, {text: "", color: "gray"}, {text: "\n\nEnabled: click to disable it", color: "green"}]}, width: 148, action: {type: "minecraft:run_command", command: "/trigger daisukes.menu set $(code)"}}
$data modify storage daisukes:menu button.label.extra[0].color set from storage daisukes:texts map.$(id).color
$execute if data storage daisukes:settings disabled.$(id) run data modify storage daisukes:menu button.label set value {text: "✘ ", color: "red", extra: [{text: "", color: "dark_gray", strikethrough: true}]}
$execute if data storage daisukes:settings disabled.$(id) run data modify storage daisukes:menu button.tooltip.extra[3] set value {text: "\n\nDisabled: click to enable it", color: "red"}
$data modify storage daisukes:menu button.label.extra[0].text set from storage daisukes:texts map.$(id).text

$data modify storage daisukes:menu button.tooltip.extra[0].text set from storage daisukes:texts map.$(id).text
$data modify storage daisukes:menu button.tooltip.extra[0].color set from storage daisukes:texts map.$(id).color
$data modify storage daisukes:menu button.tooltip.extra[2].text set from storage daisukes:texts desc.$(id)

data modify storage daisukes:menu dialog.actions append from storage daisukes:menu button
