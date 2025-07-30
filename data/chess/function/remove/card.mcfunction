execute as @n[tag=card] if entity @s[type=item_display] at @p[tag=user] run function chess:get/card
execute as @n[tag=card] if entity @s[type=block_display] at @p[tag=user] run function chess:get/slab
kill @n[tag=card]
tag @s remove carded