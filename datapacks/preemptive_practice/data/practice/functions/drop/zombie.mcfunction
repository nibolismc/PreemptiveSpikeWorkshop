playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.75 0.8
playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~ 1

bossbar set practice:mob_spawner name {"text":"Zombie Spawner","color":"light_purple"}
bossbar set practice:mob_spawner value 1
bossbar set practice:mob_spawner color purple

team modify ws_spawner prefix {"text":"Zombie ","color":"dark_puple"}
team modify ws_spawner color dark_purple

setblock -917 34 1976 minecraft:spawner{SpawnData:{id:"minecraft:zombie"}} destroy
kill @e[type=experience_orb]