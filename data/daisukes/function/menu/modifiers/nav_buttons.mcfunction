# Botons de canvi de pagina (menu/modifiers/nav): 2<pagina>
$data modify storage daisukes:menu dialog.actions append value {label: "◀ Page $(prev)/$(pages)", width: 148, action: {type: "minecraft:run_command", command: "/trigger daisukes.menu set 2$(prev)"}}
$data modify storage daisukes:menu dialog.actions append value {label: "Page $(next)/$(pages) ▶", width: 148, action: {type: "minecraft:run_command", command: "/trigger daisukes.menu set 2$(next)"}}
