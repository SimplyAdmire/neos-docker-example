Docker Neos example
===================

Using dinghy for nfs shares https://github.com/codekitchen/dinghy (also takes adds reverse proxy for *.docker)

Use the commands in `bin/` for control.

`bin/composer.sh` for composer
`bin/flow.sh` for flow CLI
`bin/start-environment.sh` start the whole environment
`bin/stop-environment.sh` stop the whole environment
`bin/restart-environment.sh` do the 2 above but the other way around

Gulp / Npm:
`bin/gulp.sh` If you run gulp
`bin/npm.sh` To run npm
`bin/yarn.sh` The npm installed yarn package manager (npm uses chown which obviously fails on nfs, yarn doesn't)

Mysql:
`bin/mysql.sh` didn't use that lately
`bin/mysql-import.sh` didn't use that lately
`bin/mysqldump.sh` didn't use that lately

Convencience:
`bin/flush-content-cache.sh` < just in case you want to be sure you didn't mess up @cache config
`bin/import-development-site.sh` For convenience

Just run it:

    bin/composer.sh install
    bin/flow.sh doctrine:migrate
    bin/flow.sh user:create admin password John Doe --roles TYPO3.Neos:Administrator
    bin/import-development-site.sh

open http://neos-demo.docker
