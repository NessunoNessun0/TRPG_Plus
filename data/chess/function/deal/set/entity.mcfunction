data modify entity @s item set from entity @n[type=item_display,tag=deck] item.components.minecraft:bundle_contents[-1]
data remove entity @n[type=item_display,tag=deck] item.components.minecraft:bundle_contents[-1]
tag @s remove d0
tag @s add d1