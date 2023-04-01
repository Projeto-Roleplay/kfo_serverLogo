fx_version "adamant"
games {"rdr3"}
author 'Murilo Bada a.k.a KIFOO <murilomaffiolettibada@hotmail.com>'
description 'a server logo resource'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

client_scripts {
    'client/cl_*.lua',
} 

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/sv_*.lua',
}

shared_scripts{
    'shared/Config.lua'
}

ui_page "client/nui/index.html"

files {
    'client/nui/*',
    'client/nui/shared/****',
}