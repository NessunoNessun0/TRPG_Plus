teleport @s ~ ~ ~
scoreboard players remove Count system 1
tag @s remove c1
tag @s add c2
execute if score Count system matches 0 as @e[tag=c2] at @s run function card:deal/interaction
execute unless score Count system matches 0 as @e[tag=c1,sort=random,limit=1] positioned ~ ~0.0078125 ~ run function card:deal/random