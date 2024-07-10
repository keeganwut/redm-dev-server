fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Keegan'
description 'Character Creator'
version '0.1.1'

client_scripts {
    'client/*.lua',
}

shared_scripts {
    'config.lua',
}

server_scripts {
    'server/*.lua',
}

ui_page {
    'ui/index.html'
}

files {
    'ui/js/*.js',
    'ui/index.html',
    'ui/css/styles.css',
}