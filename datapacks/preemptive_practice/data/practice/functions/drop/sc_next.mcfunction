playsound minecraft:ui.button.click player @a ~ ~ ~ 1
execute if score #step sc_cfg < #total sc_cfg run scoreboard players add #step sc_cfg 1
function practice:sc/load_step
