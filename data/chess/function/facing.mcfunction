execute if entity @p[tag=user,y_rotation=45..135] run tp @s ~ ~ ~ 90 ~
execute if entity @p[tag=user,y_rotation=-45..45] run tp @s ~ ~ ~ 0 ~
execute if entity @p[tag=user,y_rotation=-135..-45] run tp @s ~ ~ ~ -90 ~
execute unless entity @p[tag=user,y_rotation=-135..135] run tp @s ~ ~ ~ 180 ~