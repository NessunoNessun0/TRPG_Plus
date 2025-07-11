scoreboard objectives add system dummy {"text": "系统数据"}

team add red
team modify red color red
team add green
team modify green color green
team add blue
team modify blue color blue
team add yellow
team modify yellow color yellow

data modify storage minecraft:gamerule bundle_name set value true

scoreboard objectives add constant dummy
scoreboard players set 0 constant 0
scoreboard players set 2 constant 2
scoreboard players set 5 constant 5
scoreboard players set 10 constant 10
scoreboard players set 100 constant 100

scoreboard objectives add y dummy

scoreboard objectives add uuid.0 dummy
scoreboard objectives add uuid.1 dummy
scoreboard objectives add uuid.2 dummy
scoreboard objectives add uuid.3 dummy
function minecraft:uuid

scoreboard objectives add trpg.dice dummy
scoreboard objectives add trpg.result dummy {"text": "出目"}
scoreboard objectives add trpg.dice_count dummy

scoreboard objectives add brp.base dummy
scoreboard objectives add brp.half dummy
scoreboard objectives add brp.fifth dummy

#scoreboard objectives add brp.STR dummy
#scoreboard objectives add brp.CON dummy
#scoreboard objectives add brp.SIZ dummy
#scoreboard objectives add brp.DEX dummy {"text": "敏捷"}
#scoreboard objectives add brp.APP dummy
#scoreboard objectives add brp.INT dummy
#scoreboard objectives add brp.POW dummy
#scoreboard objectives add brp.EDU dummy

#scoreboard objectives add coc.LUK dummy
#scoreboard objectives add coc.build dummy
#scoreboard objectives add coc.SAN dummy

scoreboard objectives add fate.point dummy {"text": "命运点"}

#scoreboard objectives add trpg.hp dummy
#scoreboard objectives add dnd.ac dummy

tellraw @a {translate:"已载入我的世界TRPG"}