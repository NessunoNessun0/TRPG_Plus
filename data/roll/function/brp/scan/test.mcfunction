#$tellraw @a "扫描$(scan)"
execute if data storage roll:data {slide:{scan:"|"}} run function roll:brp/run with storage roll:data slide