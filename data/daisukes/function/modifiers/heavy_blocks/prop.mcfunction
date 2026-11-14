# Si el bloc te aquesta propietat amb aquest valor, el bloc que cau tambe (si no la te, la macro falla i no passa res)
$execute if block ~ ~ ~ $(block)[$(p)=$(v)] run data modify storage daisukes:heavy state.Properties.$(p) set value "$(v)"
