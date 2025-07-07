tag @s add used

#移除椅子
execute if entity @s[tag=chair] if entity @p[tag=user,gamemode=creative] run kill @s
#移除指示灯
execute if entity @s[tag=lamp] if entity @p[tag=user,gamemode=creative] run function chess:remove_lamp
#移除角色
execute if entity @s[tag=map,tag=occupied] if entity @p[tag=user,predicate=!minecraft:sprint] run function map:character/remove
#移除地砖
execute if entity @s[tag=map,tag=brick] if entity @p[tag=user,predicate=minecraft:sprint] run function chess:get_brick
#地形下降
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick[item_model="minecraft:wooden_shovel"] on passengers if entity @s[tag=map] run function map:map/map {t:remove}
#地格下降
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick[item_model="minecraft:wooden_hoe"] on passengers if entity @s[tag=map] run function map:map/interaction {dy:-0.0625}
#移除地格
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick[item_model="minecraft:wooden_pickaxe"] run function map:map/remove

tag @s remove used