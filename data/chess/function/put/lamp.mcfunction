data modify entity @s block_state.Name set value redstone_lamp
data modify entity @s transformation.scale set value [0.125,0.125,0.125]
data modify entity @s transformation.translation set value [-0.0625,-0.125,-0.0625]
tag @s add lamp
summon interaction ~ ~ ~ {Tags:[lamp],height:0.125f,width:0.125f}
ride @s mount @n[type=interaction,tag=lamp]