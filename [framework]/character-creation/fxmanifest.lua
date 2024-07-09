fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

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
    'html/index.html'
}

files {
    'html/js/*.js',
    'html/index.html',
    'html/css/styles.css',
}