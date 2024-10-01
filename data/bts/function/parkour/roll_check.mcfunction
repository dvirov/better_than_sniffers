#execute if block ~ ~-1 ~ obsidian run 

execute if predicate bts:is_sneaking run function bts:parkour/roll
execute if score @s raycast matches 0..20 run function bts:parkour/roll

advancement revoke @s only bts:trigger/test
