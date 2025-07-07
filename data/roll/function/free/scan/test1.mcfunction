#$tellraw @a "扫描$(scan)"
execute if data storage roll:data {slide:{scan:"D"}} run function roll:free/dice with storage roll:data slide