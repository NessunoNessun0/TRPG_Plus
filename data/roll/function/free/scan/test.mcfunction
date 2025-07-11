#$tellraw @a "扫描$(scan)"
execute if data storage roll:data {slide:{scan:"+"}} run function roll:free/monomial with storage roll:data slide