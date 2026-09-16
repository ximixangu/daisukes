function daisukes:engine/deactivate with storage daisukes:state

function daisukes:engine/choose_next

data modify storage daisukes:state active set from storage daisukes:state next
data modify storage daisukes:state active_index set from storage daisukes:state index

execute store result score #active_index daisukes.index run data get storage daisukes:state active_index

function daisukes:engine/activate with storage daisukes:state