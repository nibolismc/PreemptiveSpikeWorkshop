# n chests per layer from x -1426 towards -x (max 8)
# single front (z 1968)
execute if score #layout sc_cfg matches 1 if score #front sc_cfg matches 1 run fill -1426 34 1968 -1426 34 1968 minecraft:chest
execute if score #layout sc_cfg matches 1 if score #front sc_cfg matches 2 run fill -1426 34 1968 -1427 34 1968 minecraft:chest
execute if score #layout sc_cfg matches 1 if score #front sc_cfg matches 3 run fill -1426 34 1968 -1428 34 1968 minecraft:chest
execute if score #layout sc_cfg matches 1 if score #front sc_cfg matches 4 run fill -1426 34 1968 -1429 34 1968 minecraft:chest
execute if score #layout sc_cfg matches 1 if score #front sc_cfg matches 5 run fill -1426 34 1968 -1430 34 1968 minecraft:chest
execute if score #layout sc_cfg matches 1 if score #front sc_cfg matches 6 run fill -1426 34 1968 -1431 34 1968 minecraft:chest
execute if score #layout sc_cfg matches 1 if score #front sc_cfg matches 7 run fill -1426 34 1968 -1432 34 1968 minecraft:chest
execute if score #layout sc_cfg matches 1 if score #front sc_cfg matches 8 run fill -1426 34 1968 -1433 34 1968 minecraft:chest
# double front (z 1969)
execute if score #layout sc_cfg matches 2 if score #front sc_cfg matches 1 run fill -1426 34 1969 -1426 34 1969 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #front sc_cfg matches 2 run fill -1426 34 1969 -1427 34 1969 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #front sc_cfg matches 3 run fill -1426 34 1969 -1428 34 1969 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #front sc_cfg matches 4 run fill -1426 34 1969 -1429 34 1969 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #front sc_cfg matches 5 run fill -1426 34 1969 -1430 34 1969 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #front sc_cfg matches 6 run fill -1426 34 1969 -1431 34 1969 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #front sc_cfg matches 7 run fill -1426 34 1969 -1432 34 1969 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #front sc_cfg matches 8 run fill -1426 34 1969 -1433 34 1969 minecraft:chest
# double between (z 1973)
execute if score #layout sc_cfg matches 2 if score #b1 sc_cfg matches 1 run fill -1426 34 1973 -1426 34 1973 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #b1 sc_cfg matches 2 run fill -1426 34 1973 -1427 34 1973 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #b1 sc_cfg matches 3 run fill -1426 34 1973 -1428 34 1973 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #b1 sc_cfg matches 4 run fill -1426 34 1973 -1429 34 1973 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #b1 sc_cfg matches 5 run fill -1426 34 1973 -1430 34 1973 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #b1 sc_cfg matches 6 run fill -1426 34 1973 -1431 34 1973 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #b1 sc_cfg matches 7 run fill -1426 34 1973 -1432 34 1973 minecraft:chest
execute if score #layout sc_cfg matches 2 if score #b1 sc_cfg matches 8 run fill -1426 34 1973 -1433 34 1973 minecraft:chest
# behind (both layouts) (z 1983)
execute if score #behind sc_cfg matches 1 run fill -1426 34 1983 -1426 34 1983 minecraft:chest
execute if score #behind sc_cfg matches 2 run fill -1426 34 1983 -1427 34 1983 minecraft:chest
execute if score #behind sc_cfg matches 3 run fill -1426 34 1983 -1428 34 1983 minecraft:chest
execute if score #behind sc_cfg matches 4 run fill -1426 34 1983 -1429 34 1983 minecraft:chest
execute if score #behind sc_cfg matches 5 run fill -1426 34 1983 -1430 34 1983 minecraft:chest
execute if score #behind sc_cfg matches 6 run fill -1426 34 1983 -1431 34 1983 minecraft:chest
execute if score #behind sc_cfg matches 7 run fill -1426 34 1983 -1432 34 1983 minecraft:chest
execute if score #behind sc_cfg matches 8 run fill -1426 34 1983 -1433 34 1983 minecraft:chest
