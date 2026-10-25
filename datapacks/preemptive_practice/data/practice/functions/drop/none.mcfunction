playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.75 0.8
playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~ 1

bossbar set practice:mob_spawner name {"text":"No Spawner","color":"gray"}
bossbar set practice:mob_spawner value 0
bossbar set practice:mob_spawner color white

team modify ws_spawner2 prefix {"text":"No ","color":"gray"}
team modify ws_spawner2 color gray

setblock -917 34 1976 minecraft:air destroy
kill @e[type=experience_orb]