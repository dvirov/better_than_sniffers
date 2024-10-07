
summon zombified_piglin ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:1f,AngerTime:300,Tags:["ai"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:generic.armor",base:0},{id:"minecraft:generic.attack_damage",base:1},{id:"minecraft:generic.follow_range",base:10},{id:"minecraft:generic.gravity",base:10},{id:"minecraft:generic.max_health",base:1},{id:"minecraft:generic.scale",base:0.01}]}
ride @n[type=zombified_piglin,tag=ai] mount @s

tag @s add scanned