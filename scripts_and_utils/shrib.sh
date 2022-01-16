alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
alias dcl='docker-compose logs'
alias dc='docker-compose'
alias dcstart='docker-compose start'
alias dcstop='docker-compose stop'
# alias dwp="docker-compose run --user='33:1000' -e WP_CLI_CACHE_DIR='/var/www/html/.wp-cli/cache/' --rm wpcli_alpha wp"
alias dwp="docker-compose run --user='33:1000' --rm wpcli_alpha wp"
alias wpcli="docker-compose run --user='33:1000' --rm wpcli_alpha wp"
alias wpsh="docker-compose run --user='33:1000' --rm wpcli_alpha sh"

docker-compose run --user='33:1000' --rm wpcli_alpha wp core install \
--url=localhost \
--title="XXXX" \
--admin_user=aaa \
--admin_password='bbb' \
--admin_email=test@test.com \
--skip-email

dcu 
dcl 
dwp --info

sudo chgrp -R $(id -u -n) wordpress_www
sudo chmod -R 775 wordpress_www
sudo chown -R $(id -u -n):www-data wordpress_www

dwp \
core install --url=http://micro.local \
--title="Micro" \
--admin_user=aaa \
--admin_password=bbb \
--admin_email=test@test.com

plugins_to_install="wp-analytify elementor wordfence wpforms-lite"
dwp plugin install $plugins_to_install --activate
dwp plugin list 

dwp theme install hello-elementor --activate
dwp theme list 

wpcli plugin uninstall akismet hello 
wpcli theme delete twentynineteen twentytwenty twentytwentyone

dwp option list # get pluck set update patch add delete 