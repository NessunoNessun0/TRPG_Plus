execute on passengers if entity @s[tag=bric] at @p[tag=user] run function chess:get/deck
execute on passengers if entity @s[tag=bric] run kill @s
tag @s remove bric
tag @s remove deck
tag @s add map