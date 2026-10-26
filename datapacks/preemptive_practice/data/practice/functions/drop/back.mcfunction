playsound minecraft:ui.button.click player @a ~ ~ ~ 1
scoreboard players set @a actionbar 0

execute as @a[scores={hotbar_index=10..11}] run scoreboard players set @s hotbar_index 1
execute as @a[scores={hotbar_index=2}] run scoreboard players set @s hotbar_index 10
execute as @a[scores={hotbar_index=3}] run scoreboard players set @s hotbar_index 11
execute as @a[scores={hotbar_index=5}] run scoreboard players set @s hotbar_index 4
execute as @a[scores={hotbar_index=6..8}] run scoreboard players set @s hotbar_index 5