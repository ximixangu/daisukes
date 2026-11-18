# Opcions predefinides del dialeg d'opcions (11 Default, 12 Easy, 13 Hard, 14 Chaos): es desen directament.
# Default es la configuracio original de Daisuke (settings/defaults) i a mes torna a activar tots els modificadors
execute if score #menu daisukes.math matches 11 run function daisukes:settings/defaults
execute if score #menu daisukes.math matches 11 run data remove storage daisukes:settings disabled
execute if score #menu daisukes.math matches 11 run data remove storage daisukes:temp pool
execute if score #menu daisukes.math matches 11 run data modify storage daisukes:menu notice set value {text: "✔ Default settings, every modifier enabled", color: "green"}
execute if score #menu daisukes.math matches 11 run data modify storage daisukes:menu action set value " chose the Default settings (every modifier enabled): "

execute if score #menu daisukes.math matches 12 run function daisukes:settings/preset_easy
execute if score #menu daisukes.math matches 12 run data modify storage daisukes:menu notice set value {text: "✔ Easy settings", color: "green"}
execute if score #menu daisukes.math matches 12 run data modify storage daisukes:menu action set value " chose the Easy settings: "

execute if score #menu daisukes.math matches 13 run function daisukes:settings/preset_hard
execute if score #menu daisukes.math matches 13 run data modify storage daisukes:menu notice set value {text: "✔ Hard settings", color: "green"}
execute if score #menu daisukes.math matches 13 run data modify storage daisukes:menu action set value " chose the Hard settings: "

execute if score #menu daisukes.math matches 14 run function daisukes:settings/preset_chaos
execute if score #menu daisukes.math matches 14 run data modify storage daisukes:menu notice set value {text: "✔ Chaos settings", color: "green"}
execute if score #menu daisukes.math matches 14 run data modify storage daisukes:menu action set value " chose the Chaos settings: "

function daisukes:menu/settings/changed
