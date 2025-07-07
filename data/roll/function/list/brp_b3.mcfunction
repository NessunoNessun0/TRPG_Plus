execute store result score @s trpg.result run random value 0..9
#tellraw @a {"translate": "[十位]%s","with": [{"score":{"objective":"trpg.result","name":"@s"},"color":"aqua"}]}
execute store result score @s trpg.dice run random value 0..9
#tellraw @a {"translate": "[奖励]%s","with": [{"score":{"objective":"trpg.dice","name":"@s"},"color":"aqua"}]}
scoreboard players operation @s trpg.result < @s trpg.dice
execute store result score @s trpg.dice run random value 0..9
#tellraw @a {"translate": "[奖励]%s","with": [{"score":{"objective":"trpg.dice","name":"@s"},"color":"aqua"}]}
scoreboard players operation @s trpg.result < @s trpg.dice
execute store result score @s trpg.dice run random value 0..9
#tellraw @a {"translate": "[奖励]%s","with": [{"score":{"objective":"trpg.dice","name":"@s"},"color":"aqua"}]}
scoreboard players operation @s trpg.result < @s trpg.dice
scoreboard players operation @s trpg.result *= 10 constant
execute store result score @s trpg.dice run random value 1..10
#tellraw @a {"translate": "[个位]%s","with": [{"score":{"objective":"trpg.dice","name":"@s"},"color":"aqua"}]}
scoreboard players operation @s trpg.result += @s trpg.dice
data modify storage roll:data brp set value {name:"技能|值",enchantment:brp,lvl:113}
function roll:brp/roll
function roll:brp/levels_of_success with storage roll:data brp
data remove storage roll:data brp