data modify entity @s block_state.Name set from entity @p[tag=user] SelectedItem.id
data modify entity @s transformation.scale set value [0.0625,0.0625,0.0625]
data modify entity @s transformation.translation set value [-0.03125,0.0,-0.03125]
data modify entity @s teleport_duration set value 2
item modify entity @p[tag=user] weapon.mainhand minecraft:count-1
tag @s add card
tp @s @n[type=minecraft:interaction,tag=map,tag=!carded]
execute at @s run tag @n[type=minecraft:interaction,tag=map,tag=!carded] add carded