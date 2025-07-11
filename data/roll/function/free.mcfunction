data modify storage roll:data free set value {selector:"a",name:"nDm+c",lore:"[\\'自由掷骰\\']",roll:"{\\'type\\':\\'free\\'}"}
execute if items entity @s weapon.mainhand *[custom_data~{roll:{hide:true}}] run function roll:free/hide
function roll:free/roll
function roll:free/output with storage roll:data free
data remove storage roll:data free