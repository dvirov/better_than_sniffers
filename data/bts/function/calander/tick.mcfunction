execute if predicate bts:sunrise run function bts:calander/nextday
execute if predicate bts:nightfall run function bts:calander/nighttime
execute if predicate bts:nightfall if predicate bts:word_event/rng0.1 run function bts:calander/bloodmoon