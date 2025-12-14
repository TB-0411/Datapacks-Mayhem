
data merge storage tweaks:temp {enchant:{array:["aqua_affinity","bane_of_arthropods","binding_curse","blast_protection","breach","channeling","density","depth_strider","efficiency","feather_falling","fire_aspect","fire_protection","flame","fortune","frost_walker","impaling","infinity","knockback","looting","loyalty","luck_of_the_sea","lure","mending","multishot","piercing","power","projectile_protection","protection","punch","quick_charge","respiration","riptide","sharpness","smite","soul_speed","sweeping_edge","swift_sneak","thorns","unbreaking","vanishing_curse","wind_burst"]}}

# "silk_touch" excluded

# Store the array lenght
execute store result score temp1 tweaks_storage if data storage tweaks:temp enchant.array[]
scoreboard players remove temp1 tweaks_storage 1

# Store it inside the storage (with a -1 to fit arrays principa)
execute store result storage tweaks:temp enchant.count int 1 run scoreboard players get temp1 tweaks_storage

# DEBUG
# function tweaks:r_enchants/enchant_package/print_enchant_count with storage tweaks:temp enchant