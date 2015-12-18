log_level            :info
log_location         STDOUT
node_name            'rpaulmier'
cache_type           'BasicFile'
cache_options( :path => "/Users/remi/.chef/checksums" )
client_key           '/Users/remi/.chef/rpaulmier.pem'

#cXXXookbook_path       [ "/Users/remi/stash/chef/chef/cookbooks" ]
# oh-my-zsh knife plugin for auto-completion needs the array to not have spaces
cookbook_path        ['/Users/remi/stash/chef/chef/cookbooks']
cookbook_copyright   "BlaBlaCar"
cookbook_email       "remi.paulmier@blablacar.com"
cookbook_license     "apachev2"

chef_server_url      "https://chef.prive.comuto.com"
validation_key       "/Users/remi/.chef/validation.pem"

ssl_verify_mode      :verify_peer

knife[:ssh_user] = "root"
