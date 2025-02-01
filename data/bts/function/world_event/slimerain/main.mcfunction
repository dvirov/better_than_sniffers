particle item_slime ~ ~-50 ~ ~10 ~30 ~10 0 50 normal

execute if predicate bts:word_event/rng0.01 positioned ~ ~ ~ run function bts:world_event/slimerain/summon


execute if predicate bts:word_event/rng0.01 positioned ^ ^ ^30 run function bts:world_event/slimerain/summon
execute if predicate bts:word_event/rng0.01 positioned ^ ^ ^55 run function bts:world_event/slimerain/summon
execute if predicate bts:word_event/rng0.01 positioned ^-30 ^ ^ run function bts:world_event/slimerain/summon
execute if predicate bts:word_event/rng0.01 positioned ^-55 ^ ^ run function bts:world_event/slimerain/summon
execute if predicate bts:word_event/rng0.01 positioned ^30 ^ ^ run function bts:world_event/slimerain/summon
execute if predicate bts:word_event/rng0.01 positioned ^55 ^ ^ run function bts:world_event/slimerain/summon

execute unless score slimeking fieldboss matches 1 if predicate bts:word_event/rng0.001 positioned ~ ~60 ~ run function bts:world_event/slimerain/summon_slime_king


