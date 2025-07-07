advancement revoke @s only map:end
advancement revoke @s only map:start
tag @s add user
execute as @e[type=interaction] if data entity @s interaction.player at @s run function map:character/finish
tag @s remove user