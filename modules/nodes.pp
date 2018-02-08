node default {
    case $::operatingsystem {
        'OracleLinux', 'Ubuntu' : { include jenkins }
        default  : { notify {"$::operatingsystem is not supported yet":} }
    }
}
