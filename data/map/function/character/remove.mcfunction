execute as @n[tag=character] if entity @s[type=item_display] at @p[tag=user] run function chess:get_clay
execute as @n[tag=character] if entity @s[type=block_display] at @p[tag=user] run function chess:get_slab
kill @n[tag=character]
tag @s remove occupied