
summon zombified_piglin ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:1f,Tags:["ai"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:0},{id:"minecraft:attack_damage",base:1},{id:"minecraft:follow_range",base:0},{id:"minecraft:gravity",base:10},{id:"minecraft:max_health",base:1},{id:"minecraft:scale",base:0.01}]}
ride @n[type=zombified_piglin,tag=ai] mount @s
tag @s add is_nutral
tag @s add scanned