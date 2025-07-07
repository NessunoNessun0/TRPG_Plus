data modify entity @s item.components."minecraft:block_entity_data".item set from block ~ ~1 ~ Items[0]
data remove block ~ ~1 ~ Items[0]
tag @s remove c0
tag @s add c1