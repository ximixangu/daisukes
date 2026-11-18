# Els modificadors desactivats al menu (daisukes:settings disabled, menu/modifiers) no entren a la pool:
# aixi no surten mai, i la resta (incompatibilitats, no repetir) funciona igual
$execute if data storage daisukes:settings disabled.$(id) run return 0
$data modify storage daisukes:temp pool append value {id: "$(id)"}
