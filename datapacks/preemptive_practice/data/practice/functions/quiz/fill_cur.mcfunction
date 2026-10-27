scoreboard players operation #t quiz_tmp = @p quiz_spawner_idx
function practice:quiz/txt_spawner
data modify storage practice:quiz cur.s1 set from storage practice:quiz tx

scoreboard players operation #t quiz_tmp = @p quiz_sp2_idx
function practice:quiz/txt_spawner
data modify storage practice:quiz cur.s2 set from storage practice:quiz tx

scoreboard players operation #t quiz_tmp = @p quiz_sp3_idx
function practice:quiz/txt_spawner
data modify storage practice:quiz cur.s3 set from storage practice:quiz tx
