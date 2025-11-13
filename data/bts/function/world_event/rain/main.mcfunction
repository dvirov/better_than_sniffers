


execute unless predicate bts:world_event/rng0.1 run return fail


execute store result storage temp position.x int 1 run random value -64..64
execute store result storage temp position.z int 1 run random value -64..64

function bts:world_event/rain/macro with storage temp position

