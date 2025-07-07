data modify entity @s item.components.minecraft:bundle_contents prepend from entity @p[tag=user] SelectedItem
data modify entity @s item.components.minecraft:bundle_contents[0].count set value 1

#牌垫显示开关
execute if data storage minecraft:gamerule {bundle_name:true} run data modify entity @s CustomNameVisible set value true
execute if data storage minecraft:gamerule {bundle_name:false} run data modify entity @s CustomNameVisible set value false

data modify entity @s CustomName set from entity @s item.components.minecraft:bundle_contents[0].components."minecraft:item_name"
data modify entity @s CustomName set from entity @s item.components.minecraft:bundle_contents[0].components."minecraft:custom_name"