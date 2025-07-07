execute as @e[tag=c1] run scoreboard players add Count system 1
execute as @e[tag=c1,sort=random,limit=1] positioned ~ ~1.5 ~ run function card:deal/random