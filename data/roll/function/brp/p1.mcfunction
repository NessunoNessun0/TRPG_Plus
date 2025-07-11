data modify storage roll:data brp set value {selector:"a",name:"技能|值",lore:"[\\'技能检定\\',\\'惩罚1\\']",roll:"{\\'type\\':\\'brp\\',\\'pun\\':1}"}
execute store result score @s trpg.dice run random value 0..9
#tellraw @a {"translate": "[惩罚]%s","with": [{"score":{"objective":"trpg.dice","name":"@s"},"color":"aqua"}]}
scoreboard players operation @s trpg.result > @s trpg.dice