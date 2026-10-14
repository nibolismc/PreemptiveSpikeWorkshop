execute as @a run bossbar set practice:chests_front name [{"text":"Chests in front: ","color":"gold"},{"score":{"name":"@s","objective":"chests_in_front"},"color":"white"}]
execute as @a run bossbar set practice:chests_behind name [{"text":"Chests behind: ","color":"gold"},{"score":{"name":"@s","objective":"chests_behind"},"color":"white"}]

execute as @a[scores={hotbar_index=6,number_of_rounds=..100}] run bossbar set practice:number_of_rounds name [{"text":"Number of rounds: ","color":"gold"},{"score":{"name":"@s","objective":"number_of_rounds"},"color":"white"}]
execute as @a[scores={hotbar_index=6,number_of_rounds=101}] run bossbar set practice:number_of_rounds name [{"text":"Number of rounds: ","color":"gold"},{"text":"∞","color":"white"}]