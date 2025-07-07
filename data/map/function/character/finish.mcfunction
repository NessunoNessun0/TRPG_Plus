tag @s add occupied
tag @s add used
execute as @e[tag=character] if score @s uuid.0 = @p[tag=user] uuid.0 if score @s uuid.1 = @p[tag=user] uuid.1 if score @s uuid.2 = @p[tag=user] uuid.2 if score @s uuid.3 = @p[tag=user] uuid.3 at @s run function map:character/move
tag @s remove used