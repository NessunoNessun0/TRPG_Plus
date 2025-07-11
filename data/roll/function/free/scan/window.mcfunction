$data modify storage roll:data slide.scan set string storage roll:data slide.input $(l) $(r)
function roll:free/scan/test with storage roll:data slide
execute if score len system = scan system run function roll:free/over with storage roll:data slide
execute unless score len system <= scan system run function roll:free/scan/slide with storage roll:data