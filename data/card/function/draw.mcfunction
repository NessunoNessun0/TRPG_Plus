summon item ~ ~ ~ {UUID:[I;0,0,0,1],Item:{id:barrier,count:1},Age:-32768,PickupDelay:32767}
execute on passengers if entity @s[type=item_display] run data modify entity 0-0-0-0-1 Item set from entity @s item.components."minecraft:block_entity_data".item
execute as 0-0-0-0-1 if entity @s[nbt={Item:{id:"minecraft:barrier"}}] run kill @s
data modify entity 0-0-0-0-1 PickupDelay set value 0
execute on passengers run kill @s
kill @s