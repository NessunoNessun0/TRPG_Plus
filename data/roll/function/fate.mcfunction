execute store result score @s trpg.result run random value -1..1
execute store result score @s trpg.dice run random value -1..1
scoreboard players operation @s trpg.result += @s trpg.dice
execute store result score @s trpg.dice run random value -1..1
scoreboard players operation @s trpg.result += @s trpg.dice
execute store result score @s trpg.dice run random value -1..1
scoreboard players operation @s trpg.result += @s trpg.dice
tellraw @a {"translate": "[%s]%s=%s","with": [{"selector":"@s"},{"text": "4DF","color": "light_purple",click_event:{action:"run_command",command:'/give @s bone_meal[max_stack_size=99,item_name="命运骰",lore=["FATE"],custom_data={"roll": {"type": "fate"}},consumable={"animation":"none","has_consume_particles":false,"consume_seconds":0}]'}},{"score":{"objective":"trpg.result","name":"@s"},"color":"yellow"}]}
scoreboard players set @s trpg.result 0