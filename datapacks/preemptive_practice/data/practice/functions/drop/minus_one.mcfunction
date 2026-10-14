playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 1.35

function practice:remove_chests

execute as @a[scores={hotbar_index=3,chest_index=0,chests_in_front=1..}] run scoreboard players remove @a chests_in_front 1
execute as @a[scores={hotbar_index=3,chest_index=1,chests_behind=1..}] run scoreboard players remove @a chests_behind 1


execute as @a[scores={hotbar_index=6,number_of_rounds=2..100}] run scoreboard players remove @a number_of_rounds 1

execute as @a[scores={hotbar_index=6,number_of_rounds=101}] run scoreboard players set @a number_of_rounds 100


function practice:updatebossbar