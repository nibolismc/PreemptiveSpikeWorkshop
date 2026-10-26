playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

execute as @a[scores={chest_index=1}] run scoreboard players set #front chestlayer_state 0
execute as @a[scores={chest_index=2}] run scoreboard players set #between1 chestlayer_state 0
execute as @a[scores={chest_index=3}] run scoreboard players set #between2 chestlayer_state 0
execute as @a[scores={chest_index=4}] run scoreboard players set #behind chestlayer_state 0

execute as @a[scores={chest_index=1}] run scoreboard players reset front: workshop_sb
execute as @a[scores={chest_index=2}] run scoreboard players reset 1: workshop_sb
execute as @a[scores={chest_index=3}] run scoreboard players reset 2: workshop_sb
execute as @a[scores={chest_index=4}] run scoreboard players reset behind: workshop_sb

execute as @a[scores={chest_index=1}] run fill -914 34 1969 -921 34 1969 minecraft:air
execute as @a[scores={chest_index=2}] run fill -914 34 1973 -921 34 1973 minecraft:air
execute as @a[scores={chest_index=3}] run fill -914 34 1979 -921 34 1979 minecraft:air
execute as @a[scores={chest_index=4}] run fill -914 34 1983 -921 34 1983 minecraft:air

scoreboard players set @a hotbar_index 11