# manifests/init.pp - manage tmpwatch stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3

class tmpwatch {
    case $operatingsystem {
        default: { include tmpwatch::base }
    }
}

class tmpwatch::base {
    package{'tmpwatch':
        ensure => installed,
    }
}
