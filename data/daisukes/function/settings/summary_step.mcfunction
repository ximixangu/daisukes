# Text d'una fase (settings/summary_pair)
$execute if score #split daisukes.math matches 1 run data modify storage daisukes:menu steps.s$(n) set value "$(t)-$(l)"
$execute if score #split daisukes.math matches 0 run data modify storage daisukes:menu steps.s$(n) set value "$(t)"
