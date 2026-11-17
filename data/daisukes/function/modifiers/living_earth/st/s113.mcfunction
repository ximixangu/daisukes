$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", ominous: "false", vault_state: "inactive"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[ominous=true] run data modify storage daisukes:earth s.Properties.ominous set value "true"
$execute if block ~ ~ ~ $(name)[vault_state=active] run data modify storage daisukes:earth s.Properties.vault_state set value "active"
$execute if block ~ ~ ~ $(name)[vault_state=unlocking] run data modify storage daisukes:earth s.Properties.vault_state set value "unlocking"
$execute if block ~ ~ ~ $(name)[vault_state=ejecting] run data modify storage daisukes:earth s.Properties.vault_state set value "ejecting"
