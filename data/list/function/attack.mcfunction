tag @s add used

#移除椅子
execute if entity @s[tag=chair] if entity @p[tag=user,gamemode=creative] run kill @s
#移除指示灯
execute if entity @s[tag=lamp] if entity @p[tag=user,gamemode=creative] run function chess:remove/lamp
#移除角色
execute if entity @s[tag=chared] if entity @p[tag=user,predicate=!minecraft:sprint] run function chess:remove/char
#移除牌类
execute if entity @s[tag=carded] if entity @p[tag=user,predicate=!minecraft:sprint] run function chess:remove/card
#移除地砖
execute if entity @s[tag=bric] if entity @p[tag=user,predicate=minecraft:sprint] run function chess:get/bric
#抽取卡牌
execute if entity @s[tag=deck] if entity @p[tag=user,predicate=!minecraft:sprint] run function chess:deck/ex
#地形下降
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick[item_model="minecraft:wooden_shovel"] on passengers if entity @s[tag=map] run function map:map/map {t:remove}
#地格下降
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick[item_model="minecraft:wooden_hoe"] on passengers if entity @s[tag=map] run function map:map/interaction {dy:-0.0625}
#移除地格
execute if entity @s[tag=map] if items entity @p[tag=user] weapon.mainhand debug_stick[item_model="minecraft:wooden_pickaxe"] run function map:map/remove

tag @s remove used