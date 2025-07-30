data modify entity @s item set from entity @p[tag=user] SelectedItem
data modify entity @s item.count set value 1
data modify entity @s transformation.scale set value [0.125,0.125,0.125]
data modify entity @s transformation.right_rotation set value [0.5,0,0,0.5]
data modify entity @s transformation.translation set value [0.0,-0.00390625,0.0]
item modify entity @p[tag=user] weapon.mainhand minecraft:count-1
function chess:facing
tag @s add bric
tag @n[tag=used] add bric
ride @s mount @n[tag=used]