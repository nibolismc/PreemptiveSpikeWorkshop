playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.75 0.8
playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~ 1

bossbar set practice:mob_spawner name {"text":"Silverfish Spawner","color":"aqua"}
bossbar set practice:mob_spawner value 1
bossbar set practice:mob_spawner color blue

setblock -917 34 1978 minecraft:spawner{SpawnData:{id:"minecraft:silverfish"}} destroy
kill @e[type=experience_orb]