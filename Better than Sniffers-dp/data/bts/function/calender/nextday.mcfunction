function bts:calender/day_counter


execute unless predicate bts:sunrise run return fail
execute if score .season calender matches 1 if predicate bts:world_event/rng0.5 run weather clear
execute if score .season calender matches 2 if predicate bts:world_event/rng0.9 run weather clear
execute if score .season calender matches 3 if predicate bts:world_event/rng0.1 run weather rain
execute if score .season calender matches 4 if predicate bts:world_event/rng0.9 run weather rain