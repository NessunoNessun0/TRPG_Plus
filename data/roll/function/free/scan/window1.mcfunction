$data modify storage roll:data slide.scan set string storage roll:data slide.input1 $(l1) $(r1)
function roll:free/scan/test1 with storage roll:data slide
execute if score len1 system = scan1 system if score D system matches 0 run function roll:free/constant
execute unless score len1 system <= scan1 system run function roll:free/scan/slide1 with storage roll:data