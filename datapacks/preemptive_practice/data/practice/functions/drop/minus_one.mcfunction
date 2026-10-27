playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 1.35

function practice:remove_chests

execute as @a[scores={hotbar_index=3,chest_index=1,chests_in_front=1..}] run scoreboard players remove @a chests_in_front 1
execute as @a[scores={hotbar_index=3,chest_index=2,chests_between1=1..}] run scoreboard players remove @a chests_between1 1
execute as @a[scores={hotbar_index=3,chest_index=3,chests_between2=1..}] run scoreboard players remove @a chests_between2 1
execute as @a[scores={hotbar_index=3,chest_index=4,chests_behind=1..}] run scoreboard players remove @a chests_behind 1

execute as @a[scores={hotbar_index=6,number_of_rounds=2..100}] run scoreboard players remove @a number_of_rounds 1

execute as @a[scores={hotbar_index=6,number_of_rounds=101}] run scoreboard players set @a number_of_rounds 100

execute if entity @a[scores={hotbar_index=13}] if score #spikes quiz_cfg matches 2.. run scoreboard players remove #spikes quiz_cfg 1

function practice:updatebossbar