advancement revoke @s only bts:trigger/feed_animal


execute as @n[type=#bts:ai_neutral,nbt={InLove:600}] on passengers if entity @s[type=zombified_piglin] run function bts:mobs/ai_change_to_nutral

