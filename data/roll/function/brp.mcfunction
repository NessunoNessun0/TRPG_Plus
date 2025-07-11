data modify storage roll:data brp set value {selector:"a",name:"技能|值",lore:"[\\'技能检定\\']",roll:"{\\'type\\':\\'brp\\'}"}
execute if items entity @s weapon.mainhand *[custom_data~{roll:{hide:true}}] run function roll:brp/hide

execute store result score @s trpg.result run random value 0..9
#tellraw @s {"translate": "[十位]%s","with": [{"score":{"objective":"trpg.result","name":"@s"},"color":"aqua"}]}

execute if items entity @s weapon.mainhand *[custom_data~{roll:{bon:"1"}}] run function roll:brp/b1
execute if items entity @s weapon.mainhand *[custom_data~{roll:{bon:"2"}}] run function roll:brp/b2
execute if items entity @s weapon.mainhand *[custom_data~{roll:{bon:"3"}}] run function roll:brp/b3
execute if items entity @s weapon.mainhand *[custom_data~{roll:{pun:"1"}}] run function roll:brp/p1
execute if items entity @s weapon.mainhand *[custom_data~{roll:{pun:"2"}}] run function roll:brp/p2
execute if items entity @s weapon.mainhand *[custom_data~{roll:{pun:"3"}}] run function roll:brp/p3

scoreboard players operation @s trpg.result *= 10 constant
execute store result score @s trpg.dice run random value 1..10
#tellraw @s {"translate": "[个位]%s","with": [{"score":{"objective":"trpg.dice","name":"@s"},"color":"aqua"}]}
scoreboard players operation @s trpg.result += @s trpg.dice

function roll:brp/roll
function roll:brp/levels_of_success with storage roll:data brp
#data remove storage roll:data brp