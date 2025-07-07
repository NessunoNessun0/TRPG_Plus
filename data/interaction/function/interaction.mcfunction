advancement revoke @s only interaction:interaction
tag @s add user
execute as @e[type=interaction] if data entity @s interaction.player at @s run function list:interaction
tag @s remove user
schedule function interaction:remove/interaction 1t