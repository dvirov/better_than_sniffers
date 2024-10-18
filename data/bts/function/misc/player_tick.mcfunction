
data modify storage bts:main temp set from entity @s UUID
data modify storage bts:main args.UUID0 set from storage bts:main temp[0]
data modify storage bts:main args.UUID1 set from storage bts:main temp[1]
data modify storage bts:main args.UUID2 set from storage bts:main temp[2]
data modify storage bts:main args.UUID3 set from storage bts:main temp[3]



function bts:bars/bar_sanity with storage bts:main args
function bts:bars/bar_temp with storage bts:main args
execute if predicate bts:is_not_breathing run function bts:bars/bar_stam_uw with storage bts:main args
execute unless predicate bts:is_not_breathing run function bts:bars/bar_stam with storage bts:main args




function bts:misc/newbars with storage bts:main args
