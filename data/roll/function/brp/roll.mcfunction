data modify storage roll:data slide.input set from entity @s SelectedItem.components."minecraft:custom_name"

data modify storage roll:data brp.input set from storage roll:data slide.input

execute store result score len system run data get storage roll:data slide.input
execute store result storage roll:data slide.len int 1 run scoreboard players get len system
#扫描
function roll:brp/scan/slide with storage roll:data
scoreboard players reset scan system
scoreboard players reset len system
data remove storage roll:data slide