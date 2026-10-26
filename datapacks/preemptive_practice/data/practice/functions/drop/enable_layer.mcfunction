playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

execute as @a[scores={chest_index=1}] run scoreboard players set #front chestlayer_state 1
execute as @a[scores={chest_index=2}] run scoreboard players set #between1 chestlayer_state 1
execute as @a[scores={chest_index=3}] run scoreboard players set #between2 chestlayer_state 1
execute as @a[scores={chest_index=4}] run scoreboard players set #behind chestlayer_state 1

execute as @a[scores={chest_index=1}] run scoreboard players set front: workshop_sb 7
execute as @a[scores={chest_index=2}] run scoreboard players set 1: workshop_sb 5
execute as @a[scores={chest_index=3}] run scoreboard players set 2: workshop_sb 3
execute as @a[scores={chest_index=4}] run scoreboard players set behind: workshop_sb 1

function practice:add_chests