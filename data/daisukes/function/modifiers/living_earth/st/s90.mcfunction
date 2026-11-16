# Blocs amb aquestes propietats: vault
scoreboard players set #k daisukes.earth 91
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[ominous=true] run data modify storage daisukes:earth s.Properties.ominous set value "true"
$execute if block ~ ~ ~ $(name)[ominous=false] run data modify storage daisukes:earth s.Properties.ominous set value "false"
$execute if block ~ ~ ~ $(name)[vault_state=inactive] run data modify storage daisukes:earth s.Properties.vault_state set value "inactive"
$execute if block ~ ~ ~ $(name)[vault_state=active] run data modify storage daisukes:earth s.Properties.vault_state set value "active"
$execute if block ~ ~ ~ $(name)[vault_state=unlocking] run data modify storage daisukes:earth s.Properties.vault_state set value "unlocking"
$execute if block ~ ~ ~ $(name)[vault_state=ejecting] run data modify storage daisukes:earth s.Properties.vault_state set value "ejecting"
