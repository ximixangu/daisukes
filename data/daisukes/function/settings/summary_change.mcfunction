# Resum de cada quant canvien (settings/summary)
$data modify storage daisukes:menu summary.extra[2].text set value "they change every $(change_name)"
$execute if score #end_fast daisukes.config matches 1 run data modify storage daisukes:menu summary.extra[2].text set value "they change every $(change_name), $(half_name) in the End"
