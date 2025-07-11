advancement revoke @s only roll:roll

execute if items entity @s weapon.mainhand *[custom_data~{roll:{type:"brp"}}] run function roll:brp
execute if items entity @s weapon.mainhand *[custom_data~{roll:{type:"free"}}] run function roll:free
execute if items entity @s weapon.mainhand *[custom_data~{roll:{type:"fate"}}] run function roll:fate

scoreboard players set @s trpg.result 0