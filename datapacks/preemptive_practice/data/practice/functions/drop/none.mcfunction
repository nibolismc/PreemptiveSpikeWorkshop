playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.75 0.8
playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~ 1

bossbar set practice:mob_spawner name {"text":"No Spawner","color":"gray"}
bossbar set practice:mob_spawner value 0
bossbar set practice:mob_spawner color white

execute as @a[scores={spawner_index=1}] run scoreboard players reset Spaw workshop_sb
execute as @a[scores={spawner_index=1}] run scoreboard players set #spawner1 spawners_state 5
execute as @a[scores={spawner_index=1}] run team modify ws_spawner1 suffix {"text":"ner","color":"gray"}
execute as @a[scores={spawner_index=1}] run team modify ws_spawner1 prefix {"text":"No ","color":"gray"}
execute as @a[scores={spawner_index=1}] run team modify ws_spawner1 color gray
execute as @a[scores={spawner_index=1}] run setblock -917 34 1971 minecraft:air destroy

execute as @a[scores={spawner_index=2}] run scoreboard players reset Spawn workshop_sb
execute as @a[scores={spawner_index=2}] run scoreboard players set #spawner2 spawners_state 5
execute as @a[scores={spawner_index=2}] run team modify ws_spawner2 suffix {"text":"er","color":"gray"}
execute as @a[scores={spawner_index=2}] run team modify ws_spawner2 prefix {"text":"No ","color":"gray"}
execute as @a[scores={spawner_index=2}] run team modify ws_spawner2 color gray
execute as @a[scores={spawner_index=2}] run setblock -917 34 1976 minecraft:air destroy

execute as @a[scores={spawner_index=3}] run scoreboard players reset Spawne workshop_sb
execute as @a[scores={spawner_index=3}] run scoreboard players set #spawner3 spawners_state 5
execute as @a[scores={spawner_index=3}] run team modify ws_spawner3 suffix {"text":"r","color":"gray"}
execute as @a[scores={spawner_index=3}] run team modify ws_spawner3 prefix {"text":"No ","color":"gray"}
execute as @a[scores={spawner_index=3}] run team modify ws_spawner3 color gray
execute as @a[scores={spawner_index=3}] run setblock -917 34 1981 minecraft:air destroy

kill @e[type=experience_orb]