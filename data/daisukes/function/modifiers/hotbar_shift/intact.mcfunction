# Tot és on el vam deixar? (S disfressat amb T còpia falsa, o S còpia de la mà amb T buida, i res marcat enlloc més)
$execute unless data storage daisukes:shift p."$(u)" run return 0
$execute unless items entity @s hotbar.$(s) *[custom_data~{daisukes_shift:{}}] run return 0
$execute if items entity @s hotbar.$(s) *[custom_data~{daisukes_shift:{d:1b}}] unless items entity @s hotbar.$(t) *[custom_data~{daisukes_shift:{j:1b}}] run return 0
$execute if items entity @s hotbar.$(s) *[custom_data~{daisukes_shift:{j:1b}}] if items entity @s hotbar.$(t) * run return 0
execute if predicate daisukes:hotbar_shift/marked_out run return 0
$execute store result score #a daisukes.shift if items entity @s hotbar.$(s) *[custom_data~{daisukes_shift:{}}]
$execute store result score #b daisukes.shift if items entity @s hotbar.$(t) *[custom_data~{daisukes_shift:{}}]
execute store result score #m daisukes.shift if items entity @s container.* *[custom_data~{daisukes_shift:{}}]
scoreboard players operation #a daisukes.shift += #b daisukes.shift
execute unless score #m daisukes.shift = #a daisukes.shift run return 0
return 1
