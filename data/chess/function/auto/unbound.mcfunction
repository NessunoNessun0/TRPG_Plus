$data modify entity @s item set value {id:brick,count:1,components:{"item_name":"Chess Unbound","item_model":"chess:unbound","custom_data":{"chess":"bric"},"custom_model_data":{"strings":["$(name)"]}}}
data modify entity @s transformation.scale set value [0.125,0.125,0.125]
data modify entity @s transformation.right_rotation set value [0.5,0,0,0.5]
data modify entity @s transformation.translation set value [0.0,-0.00390625,0.0]
tag @s add bric
tag @n[tag=used] add bric
ride @s mount @n[tag=used]
tag @n[tag=used] remove used