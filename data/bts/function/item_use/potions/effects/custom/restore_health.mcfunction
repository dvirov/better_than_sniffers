scoreboard players remove @s custom.effect.restore_health 1
execute if score @s custom.effect.restore_health matches 1.. run effect give @s regeneration 1 5 true
execute if score @s custom.effect.restore_health matches ..0 run function bts:item_use/potions/effects/custom/restore_health_restore_regen


#tellraw @a {color:red ,score:{name:"@s", objective:"custom.effect.restore_health"}}