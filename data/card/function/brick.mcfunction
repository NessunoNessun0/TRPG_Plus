#$summon item_display ~ ~ ~ {Tags:["used","brick"],item:{id:brick,count:1,components:{"item_name": "$(name)",item_model:"brick:gray","custom_model_data": {"strings": ["$(name)"]}}},transformation:[1f,0f,0f,0f,0f,1f,0f,0.4375f,0f,0f,1f,0f,0f,0f,0f,8f]}
$summon item_display ~ ~ ~ {Tags:["used","brick"],item:{id:brick,count:1,components:{"item_name": "$(name)",item_model:"brick:gray","custom_model_data": {"strings": ["$(name)"]}}},transformation:[1f,0f,0f,0f,0f,1f,0f,-0.5f,0f,0f,1f,0f,0f,0f,0f,8f]}
tag @s add brick
ride @n[type=item_display,tag=used] mount @s
execute on passengers run tag @s remove used
tag @s remove used
execute on passengers if entity @s[tag=map,nbt={block_state:{Name:"minecraft:black_concrete"}}] on vehicle on passengers if entity @s[tag=brick] run data modify entity @s item.components."minecraft:item_model" set value "brick:white"
execute on passengers if entity @s[tag=map,nbt={block_state:{Name:"minecraft:white_concrete"}}] on vehicle on passengers if entity @s[tag=brick] run data modify entity @s item.components."minecraft:item_model" set value "brick:black"