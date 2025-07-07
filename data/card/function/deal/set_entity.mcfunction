data modify entity @s item.components."minecraft:block_entity_data".item set from entity @n[type=item_display,tag=bundle] item.components.minecraft:bundle_contents[-1]
data remove entity @n[type=item_display,tag=bundle] item.components.minecraft:bundle_contents[-1]
tag @s remove c0
tag @s add c1