function practice:sc/sb_text

# which lines are shown (score = position, like in the workshop)
scoreboard players reset ont: sc_sb
scoreboard players reset pawner sc_sb
scoreboard players reset en: sc_sb
scoreboard players reset awner sc_sb
scoreboard players reset ehind: sc_sb

scoreboard players set ont: sc_sb 7
scoreboard players set ehind: sc_sb 1
execute unless score #sp1 sc_cfg matches 5 run scoreboard players set pawner sc_sb 6
execute if score #layout sc_cfg matches 2 run scoreboard players set en: sc_sb 5
execute if score #layout sc_cfg matches 2 unless score #sp2 sc_cfg matches 5 run scoreboard players set awner sc_sb 4
