data modify entity @n[type=item_display,tag=deck] item.components.minecraft:bundle_contents prepend from entity @s item
scoreboard players remove Count system 1
tag @s remove d1
tag @s add d2
execute if score Count system matches 0 as @e[tag=d2] run kill @s
execute unless score Count system matches 0 as @e[tag=d1,sort=random,limit=1] run function chess:deal/random