execute as @n[tag=char] if entity @s[type=item_display] at @p[tag=user] run function chess:get/char
kill @n[tag=char]
tag @s remove chared