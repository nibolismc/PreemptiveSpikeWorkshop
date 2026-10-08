playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.75 0.8
playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~ 1

bossbar set practice:mob_spawner name {"text":"Skeleton Spawner","color":"aqua"}


setblock -789 34 1980 minecraft:spawner{SpawnData:{id:"minecraft:skeleton"}} destroy
kill @e[type=experience_orb]