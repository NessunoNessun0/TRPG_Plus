data modify entity @s item set from entity @p[tag=user] SelectedItem
data modify entity @s item.count set value 1
data modify entity @s transformation.scale set value [0.125,0.125,0.125]
data modify entity @s transformation.right_rotation set value [0.5,0,0,0.5]
data modify entity @s transformation.translation set value [0.0,0.00390625,0.0]
data modify entity @s teleport_duration set value 2
item modify entity @p[tag=user] weapon.mainhand minecraft:count-1
function chess:facing
tag @s add card
execute at @s run tag @n[type=minecraft:interaction,tag=map,tag=!carded] add carded