##
 # tick_player.mcfunction
 # 
 #
 # Created by TB
##

scoreboard players set @s as_mined 0
scoreboard players operation @s total_mined_blocks += @s mined_blocks 
execute if score @s mined_blocks matches 1.. run scoreboard players set @s as_mined 1
scoreboard players set @s mined_blocks 0