$execute store result score @s trpg.dice run random value 1..$(m)
#$tellraw @a {"translate": "D$(m)=%s","with": [{"score":{"objective":"trpg.dice","name":"@s"},"color":"aqua"}]}
scoreboard players operation @s trpg.result += @s trpg.dice
scoreboard players remove @s trpg.dice_count 1
$execute if entity @s[scores={trpg.dice_count=1..}] as @s run function roll:free/m {m:$(m)}