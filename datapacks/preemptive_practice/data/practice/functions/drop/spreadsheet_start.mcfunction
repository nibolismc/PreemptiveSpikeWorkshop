playsound minecraft:ui.button.click player @a ~ ~ ~ 1

scoreboard players set #step sc_cfg 1
execute if score #index sc_conf matches 1 run scoreboard players set #total sc_cfg 18
execute if score #index sc_conf matches 2 run scoreboard players set #total sc_cfg 50
execute if score #index sc_conf matches 3 run scoreboard players set #total sc_cfg 114

scoreboard players set @a hotbar_index 21
scoreboard players set @a actionbar 32
scoreboard objectives setdisplay sidebar sc_sb
function practice:sc/load_step
