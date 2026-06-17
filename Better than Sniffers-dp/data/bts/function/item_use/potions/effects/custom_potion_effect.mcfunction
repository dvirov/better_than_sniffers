$execute if score @s custom.effect.$(effect) matches ..$(seconds) run scoreboard players set @s custom.effect.$(effect) $(seconds)
#$say $(effect) $(seconds)
$function bts:item_use/potions/effects/custom/$(effect) with storage temp potion
