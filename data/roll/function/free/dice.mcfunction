scoreboard players set D system 1
$data modify storage roll:data free.n set string storage roll:data slide.input1 0 $(l1)
$data modify storage roll:data free.m set string storage roll:data slide.input1 $(r1) $(len1)
function roll:free/n with storage roll:data free
function roll:free/m with storage roll:data free