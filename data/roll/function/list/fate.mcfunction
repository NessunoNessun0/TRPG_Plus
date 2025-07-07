execute store result score @s trpg.result run random value -1..1
execute store result score @s trpg.dice run random value -1..1
scoreboard players operation @s trpg.result += @s trpg.dice
execute store result score @s trpg.dice run random value -1..1
scoreboard players operation @s trpg.result += @s trpg.dice
execute store result score @s trpg.dice run random value -1..1
scoreboard players operation @s trpg.result += @s trpg.dice
tellraw @a {"translate": "[%s]%s=%s","with": [{"selector":"@s"},{"text": "4DF","color": "light_purple","clickEvent": {"action": "run_command","value": "/give @s bone_meal[max_stack_size=99,item_name=\"\\\"命运骰\\\"\",enchantments={\"roll:fate\": 1},enchantment_glint_override=false,food={\"can_always_eat\": true,\"eat_seconds\": 0.05,\"nutrition\": 0,\"saturation\": 0}]"}},{"score":{"objective":"trpg.result","name":"@s"},"color":"yellow"}]}
scoreboard players set @s trpg.result 0