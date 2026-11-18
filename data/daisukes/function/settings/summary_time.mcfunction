# Resum del mode per temps (settings/summary)
$data modify storage daisukes:menu summary.extra[0].text set value "Over time: $(start) at the start and one more every $(every_name)"
$execute if score #max_count daisukes.config matches 1.. run data modify storage daisukes:menu summary.extra[0].text set value "Over time: $(start) at the start and one more every $(every_name), up to $(max)"
