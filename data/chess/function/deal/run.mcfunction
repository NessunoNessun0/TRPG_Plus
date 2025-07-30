execute as @e[tag=d1] run scoreboard players add Count system 1
execute as @e[tag=d1,sort=random,limit=1] run function chess:deal/random
scoreboard players reset Count system