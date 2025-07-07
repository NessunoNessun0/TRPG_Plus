execute store result score @s trpg.result run random value 1..100
data modify storage roll:data brp set value {name:"技能|值",enchantment:brp,lvl:100}
function roll:brp/roll
function roll:brp/levels_of_success_hide with storage roll:data brp
data remove storage roll:data brp