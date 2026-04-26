
game 'gta5'
lua54 'yes'
fx_version 'cerulean'
description 'Mythic Framework - Weapons System with GGC Weapons Pack'
author 'Mythic Framework / GGC Weapons by ilyaas#5276 - Converted ny BIZZLE'

client_script "@mythic-base/components/cl_error.lua"
client_script "@mythic-pwnzor/client/check.lua"

shared_scripts {
    'shared/**/*.lua'
}

client_scripts {
    'client/**/*.lua'
}

server_scripts {
    'server/**/*.lua'
}

files {
    'metas/**/*.meta',
    'images/*.webp'
}

data_file 'WEAPONCOMPONENTSINFO_FILE' 'metas/**/weaponcomponents.meta'
data_file 'WEAPON_METADATA_FILE' 'metas/**/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'metas/**/weaponanimations.meta'
data_file 'PED_PERSONALITY_FILE' 'metas/**/pedpersonality.meta'
data_file 'WEAPONINFO_FILE' 'metas/**/weapons.meta'
