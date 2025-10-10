# run from player_tick function every tick 

execute if score @s custom.effect.antidote matches 1.. run function bts:item_use/potions/effects/custom/antidote
execute if score @s custom.effect.climate_resistance matches 1.. run function bts:item_use/potions/effects/custom/climate_resistance
execute if score @s custom.effect.restore_health matches 1.. run function bts:item_use/potions/effects/custom/restore_health
execute if score @s custom.effect.hunger matches 1.. run function bts:item_use/potions/effects/custom/hunger



