#execute if predicate bts:sunrise run 
execute if predicate bts:sunrise run function bts:calender/nextday

execute if predicate bts:nightfall run function bts:calender/nighttime
execute if predicate bts:nightfall if predicate bts:world_event/rng0.1 run function bts:calender/bloodmoon

