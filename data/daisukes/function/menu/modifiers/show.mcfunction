# Dialeg amb la llista de modificadors, pagina #page (de 18 en 18, en l'ordre del registre: alfabetic). Cada boto
# activa o desactiva el seu (1000 + index al registre, menu/modifiers/toggle) i la pagina torna a sortir amb el canvi.
# Els desactivats (daisukes:settings disabled) no entren mai a la pool (engine/refill_pool_add)
execute store result score #total daisukes.math run data get storage daisukes:registry modifiers
scoreboard players operation #pages daisukes.math = #total daisukes.math
scoreboard players add #pages daisukes.math 17
scoreboard players operation #pages daisukes.math /= #18 daisukes.math
execute if score #pages daisukes.math matches ..0 run scoreboard players set #pages daisukes.math 1
execute if score #page daisukes.math > #pages daisukes.math run scoreboard players operation #page daisukes.math = #pages daisukes.math
execute if score #page daisukes.math matches ..0 run scoreboard players set #page daisukes.math 1

# Primer i ultim index de la pagina
scoreboard players operation #first daisukes.math = #page daisukes.math
scoreboard players remove #first daisukes.math 1
scoreboard players operation #first daisukes.math *= #18 daisukes.math
scoreboard players operation #last daisukes.math = #first daisukes.math
scoreboard players add #last daisukes.math 17

data modify storage daisukes:menu dialog set value {type: "minecraft:multi_action", title: {text: "Modifiers", color: "red", bold: true}, body: [{type: "minecraft:plain_message", width: 300, contents: {text: "", extra: [{text: "", color: "white"}, {text: "Only enabled modifiers can come up. Click one to switch it on or off, hover over it to see what it does.", color: "gray"}]}}], actions: [], columns: 2, exit_action: {label: "◀ Back", width: 200, action: {type: "minecraft:run_command", command: "/trigger daisukes.menu set 1"}}, pause: false, after_action: "none"}
execute if score #engine_active daisukes.engine matches 1 run data modify storage daisukes:menu dialog.body[0].contents.extra append value {text: " Changes apply from the next modifier change.", color: "gray"}
data remove storage daisukes:menu args
execute store result storage daisukes:menu args.page int 1 run scoreboard players get #page daisukes.math
execute store result storage daisukes:menu args.pages int 1 run scoreboard players get #pages daisukes.math

# A dalt (sense haver de baixar): canvi de pagina, si n'hi ha mes d'una (de l'ultima es torna a la primera), i
# activar-los o desactivar-los tots (i tornar a aquesta pagina)
execute if score #pages daisukes.math matches 2.. run function daisukes:menu/modifiers/nav
function daisukes:menu/modifiers/all_buttons with storage daisukes:menu args

# Un boto per modificador de la pagina; de pas es compten els activats
scoreboard players set #enabled daisukes.math 0
scoreboard players set #i daisukes.math 0
data modify storage daisukes:menu queue set from storage daisukes:registry modifiers
execute if data storage daisukes:menu queue[0] run function daisukes:menu/modifiers/show_loop

# Titol amb la pagina i quants n'hi ha d'activats
execute store result storage daisukes:menu args.enabled int 1 run scoreboard players get #enabled daisukes.math
execute store result storage daisukes:menu args.total int 1 run scoreboard players get #total daisukes.math
function daisukes:menu/modifiers/count_text with storage daisukes:menu args

function daisukes:menu/show with storage daisukes:menu
