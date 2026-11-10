playsound minecraft:ui.button.click player @a ~ ~ ~ 1
execute if score #step sc_cfg matches 2.. run scoreboard players remove #step sc_cfg 1
function practice:sc/load_step
