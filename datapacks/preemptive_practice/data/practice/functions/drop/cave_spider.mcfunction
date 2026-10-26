playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.75 0.8
playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~ 1

bossbar set practice:mob_spawner name {"text":"Cave Spider Spawner","color":"light_purple"}
bossbar set practice:mob_spawner value 1
bossbar set practice:mob_spawner color pink

execute as @a[scores={spawner_index=1}] run scoreboard players set Spaw workshop_sb 6
execute as @a[scores={spawner_index=1}] run scoreboard players set #spawner1 spawners_state 1
execute as @a[scores={spawner_index=1}] run team modify ws_spawner1 suffix {"text":"ner","color":"light_purple"}
execute as @a[scores={spawner_index=1}] run team modify ws_spawner1 prefix {"text":"Cave Spider ","color":"light_purple"}
execute as @a[scores={spawner_index=1}] run team modify ws_spawner1 color light_purple
execute as @a[scores={spawner_index=1}] run setblock -917 34 1971 minecraft:spawner{SpawnData:{id:"minecraft:cave_spider"}} destroy

execute as @a[scores={spawner_index=2}] run scoreboard players set Spawn workshop_sb 4
execute as @a[scores={spawner_index=2}] run scoreboard players set #spawner2 spawners_state 1
execute as @a[scores={spawner_index=2}] run team modify ws_spawner2 suffix {"text":"er","color":"light_purple"}
execute as @a[scores={spawner_index=2}] run team modify ws_spawner2 prefix {"text":"Cave Spider ","color":"light_purple"}
execute as @a[scores={spawner_index=2}] run team modify ws_spawner2 color light_purple
execute as @a[scores={spawner_index=2}] run setblock -917 34 1976 minecraft:spawner{SpawnData:{id:"minecraft:cave_spider"}} destroy

execute as @a[scores={spawner_index=3}] run scoreboard players set Spawne workshop_sb 2
execute as @a[scores={spawner_index=3}] run scoreboard players set #spawner3 spawners_state 1
execute as @a[scores={spawner_index=3}] run team modify ws_spawner3 suffix {"text":"r","color":"light_purple"}
execute as @a[scores={spawner_index=3}] run team modify ws_spawner3 prefix {"text":"Cave Spider ","color":"light_purple"}
execute as @a[scores={spawner_index=3}] run team modify ws_spawner3 color light_purple
execute as @a[scores={spawner_index=3}] run setblock -917 34 1981 minecraft:spawner{SpawnData:{id:"minecraft:cave_spider"}} destroy

kill @e[type=experience_orb]