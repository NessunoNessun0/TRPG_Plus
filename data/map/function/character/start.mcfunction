tag @s add user
execute as @e[type=interaction] if data entity @s interaction.player at @s run function map:character/plan
tag @s remove user