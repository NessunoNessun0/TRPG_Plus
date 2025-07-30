summon item ~ ~ ~ {UUID:[I;0,0,0,2],Item:{id:barrier,count:1},Age:-32768,PickupDelay:32767}
data modify entity 0-0-0-0-2 Item set from entity @s item.components.minecraft:bundle_contents[0]
execute as 0-0-0-0-2 if entity @s[nbt={Item:{id:"minecraft:barrier"}}] run kill @s
data modify entity 0-0-0-0-2 PickupDelay set value 0
data remove entity @s item.components.minecraft:bundle_contents[0]