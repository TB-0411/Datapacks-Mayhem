##
 # tick.mcfunction
 # 
 #
 # Created by .Cammo&Ju
##
function alltheblocks:blocks_mined
function alltheblocks:block_reset

execute as @a at @s run function alltheblocks:tick_player
