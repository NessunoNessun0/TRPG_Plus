tag @s add used
#椅子可以坐
execute if entity @s[tag=chair] run ride @p[tag=user] mount @s
#抽取卡牌
execute if entity @s[tag=card] at @p[tag=user] run function card:draw
#放置棋子
execute if entity @s[tag=map,tag=!bundle] if items entity @p[tag=user,advancements={map:start=false}] weapon.mainhand clay_ball summon item_display run function chess:put_clay
#放置地砖
execute if entity @s[tag=map,tag=!brick] if items entity @p[tag=user] weapon.mainhand brick summon item_display run function chess:put_brick
#放置牌垫
execute if entity @s[tag=map,tag=!brick] if items entity @p[tag=user] weapon.mainhand bundle summon item_display run function chess:put_bundle
#放置跳棋
execute if entity @s[tag=map] unless items entity @p[tag=user,advancements={map:start=false}] weapon.offhand debug_stick if items entity @p[tag=user] weapon.mainhand #wooden_slabs summon block_display run function chess:put_slab
#打牌
execute if entity @s[tag=bundle] if items entity @p[tag=user] weapon.mainhand * run function chess:put_card
#跳棋升变
execute if entity @s[tag=map,tag=occupied] if entity @p[tag=user,predicate=minecraft:sprint] as @n[tag=character] if entity @s[type=block_display] run data modify entity @s block_state.Properties.type set value double
#放置指示灯
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand redstone_lamp summon block_display run function chess:put_lamp
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