advancement revoke @s only roll:roll

execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:brp":1}] run function roll:list/brp
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:brp":100}] run function roll:list/brp_hide
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:brp":111}] run function roll:list/brp_b1
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:brp":112}] run function roll:list/brp_b2
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:brp":113}] run function roll:list/brp_b3
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:brp":121}] run function roll:list/brp_p1
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:brp":122}] run function roll:list/brp_p2
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:brp":123}] run function roll:list/brp_p3
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:free":1}] run function roll:list/free
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:free":100}] run function roll:list/free_hide
execute if items entity @s weapon.mainhand bone_meal[enchantments={"roll:fate":1}] run function roll:list/fate

scoreboard players set @s trpg.result 0