playsound minecraft:ui.button.click player @a ~ ~ ~ 1

execute if score @p hotbar_index matches 5 run scoreboard players set @a hotbar_index 18