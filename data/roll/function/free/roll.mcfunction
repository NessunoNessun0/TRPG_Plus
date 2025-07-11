data modify storage roll:data slide.input set from entity @s SelectedItem.components."minecraft:custom_name"

data modify storage roll:data free.input set from storage roll:data slide.input

data modify storage roll:data slide.l1 set value 0

execute store result score len system run data get storage roll:data slide.input
execute store result storage roll:data slide.len int 1 run scoreboard players get len system
#扫描
function roll:free/scan/slide with storage roll:data
scoreboard players reset scan system
scoreboard players reset len system
data remove storage roll:data slide