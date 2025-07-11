$data modify storage roll:data slide.input1 set string storage roll:data slide.input $(l1) $(r)
scoreboard players set D system 0
execute store result score len1 system run data get storage roll:data slide.input1
execute store result storage roll:data slide.len1 int 1 run scoreboard players get len1 system
#扫描
function roll:free/scan/slide1 with storage roll:data

scoreboard players reset scan1 system
scoreboard players reset len1 system
scoreboard players reset D system

data modify storage roll:data slide.l1 set from storage roll:data slide.r