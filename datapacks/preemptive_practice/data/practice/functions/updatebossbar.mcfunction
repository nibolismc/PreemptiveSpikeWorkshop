execute as @a run bossbar set practice:chests_front name [{"text":"Chests in front: ","color":"gold"},{"score":{"name":"@s","objective":"chests_in_front"},"color":"white"}]
execute as @a run bossbar set practice:chests_behind name [{"text":"Chests behind: ","color":"gold"},{"score":{"name":"@s","objective":"chests_behind"},"color":"white"}]
execute as @a[scores={hotbar_index=1..3}] store result bossbar practice:chests_front value run scoreboard players get @s chests_in_front
execute as @a[scores={hotbar_index=1..3}] store result bossbar practice:chests_behind value run scoreboard players get @s chests_behind

execute as @a[scores={hotbar_index=4..6,number_of_rounds=..100}] run bossbar set practice:number_of_rounds name [{"text":"Number of rounds: ","color":"gold"},{"score":{"name":"@s","objective":"number_of_rounds"},"color":"white"}]
execute as @a[scores={hotbar_index=4..6,number_of_rounds=101}] run bossbar set practice:number_of_rounds name [{"text":"Number of rounds: ","color":"gold"},{"text":"∞","color":"light_purple"}]
execute as @a[scores={hotbar_index=4..6}] store result bossbar practice:number_of_rounds value run scoreboard players get @s number_of_rounds

execute as @a[scores={hotbar_index=9,number_of_rounds=..100}] run bossbar set practice:round name [{"score":{"name":"@s","objective":"current_round"},"color":"light_purple"},{"text":" / ","color":"white"},{"score":{"name":"@s","objective":"number_of_rounds"},"color":"gold"}]
execute as @a[scores={hotbar_index=9,number_of_rounds=101}] run bossbar set practice:round name [{"score":{"name":"@s","objective":"current_round"},"color":"light_purple"}]

execute as @a[scores={hotbar_index=9,number_of_rounds=..100}] store result bossbar practice:round max run scoreboard players get @s number_of_rounds
execute as @a[scores={hotbar_index=9,number_of_rounds=101}] run bossbar set practice:round max 1

execute as @a[scores={hotbar_index=9}] store result bossbar practice:round value run scoreboard players get @s current_round