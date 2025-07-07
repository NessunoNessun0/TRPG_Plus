advancement revoke @s only interaction:attack
tag @s add user
execute as @e[type=interaction] if data entity @s attack.player at @s run function list:attack
tag @s remove user
schedule function interaction:remove/attack 1t