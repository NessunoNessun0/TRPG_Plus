tag @s add used
#椅子可以坐
execute if entity @s[tag=chair] run ride @p[tag=user] mount @s
#放置指示灯
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand redstone_lamp summon block_display run function chess:put/lamp
#放置棋子
execute if entity @s[tag=map] if items entity @p[tag=user,advancements={map:char/start=false}] weapon.mainhand *[custom_data={chess:"char"}] summon item_display run function chess:put/char
#放置牌类
execute if entity @s[tag=map] if items entity @p[tag=user,advancements={map:card/start=false}] weapon.mainhand *[custom_data={chess:"card"}] summon item_display run function chess:put/card
#放置跳棋
execute if entity @s[tag=map] unless items entity @p[tag=user,advancements={map:card/start=false}] weapon.offhand debug_stick if items entity @p[tag=user] weapon.mainhand #slabs summon block_display run function chess:put/slab
#跳棋升变
execute if entity @s[tag=map,tag=carded] if entity @p[tag=user,predicate=minecraft:sprint] as @n[tag=card] if entity @s[type=block_display] run data modify entity @s block_state.Properties.type set value double
#放置地砖
execute if entity @s[tag=map,tag=!bric] if items entity @p[tag=user] weapon.mainhand *[custom_data={chess:"bric"}] summon item_display run function chess:put/bric
#放置牌垫
execute if entity @s[tag=map,tag=!bric] if items entity @p[tag=user] weapon.mainhand #bundles summon item_display run function chess:put/deck
#收入牌垫
execute if entity @s[tag=deck] if items entity @p[tag=user] weapon.mainhand * run function chess:deck/in
#改变地形沙盘
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.offhand debug_stick[item_model="minecraft:wooden_axe"] on passengers if entity @s[tag=map] run data modify entity @s block_state.Name set from entity @p[tag=user] SelectedItem.id
#地形上升
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick[item_model="minecraft:wooden_shovel"] on passengers if entity @s[tag=map] run function map:map/map {t:add}
#地格上升
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick[item_model="minecraft:wooden_hoe"] on passengers if entity @s[tag=map] run function map:map/interaction {dy:0.0625}
#在上方增加地格
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick[item_model="minecraft:wooden_pickaxe"] run summon interaction ~ ~0.125 ~ {Tags:[map],height:0.0078125f,width:0.125f,Passengers:[{id:"minecraft:block_display",Tags:[map],block_state:{Name:"minecraft:smooth_stone"},transformation:[1f,0f,0f,-0.5f,0f,1f,0f,-1.0625f,0f,0f,1f,-0.5f,0f,0f,0f,8f]}]}
#复制方块状态
#execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick on passengers if entity @s[tag=map] run function map:map/copy
#查看棋子
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand name_tag

tag @s remove used