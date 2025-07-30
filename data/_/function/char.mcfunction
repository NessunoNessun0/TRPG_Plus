attribute @s minecraft:scale base set 0.075
data modify entity @s NoAI set value true
data modify entity @s NoGravity set value true
tag @s add character
tp @s @n[type=minecraft:interaction,tag=map,tag=!chared]
execute at @s run tag @n[type=minecraft:interaction,tag=map,tag=!chared] add chared