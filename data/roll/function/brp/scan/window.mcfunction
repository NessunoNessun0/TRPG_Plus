$data modify storage roll:data slide.scan set string storage roll:data slide.input $(l) $(r)
function roll:brp/scan/test with storage roll:data slide
execute unless score len system <= scan system run function roll:brp/scan/slide with storage roll:data slide